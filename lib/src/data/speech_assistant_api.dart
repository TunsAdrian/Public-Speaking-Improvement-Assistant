import 'dart:async';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:google_speech/generated/google/cloud/speech/v1/cloud_speech.pb.dart' as response;
import 'package:google_speech/google_speech.dart';
import 'package:rxdart/rxdart.dart';

class SpeechAssistantApi {
  SpeechAssistantApi({
    @required Connectivity connectivity,
    @required RecorderStream recorderStream,
  })  : assert(connectivity != null),
        assert(recorderStream != null),
        _connectivity = connectivity,
        _recorderStream = recorderStream;

  final Connectivity _connectivity;
  final RecorderStream _recorderStream;
  BehaviorSubject<List<int>> _audioStream;
  StreamSubscription<List<int>> _audioStreamSubscription;
  String responseText = '';

  Stream<bool> listenInternetStatus() {
    return _connectivity //
        .onConnectivityChanged
        .map((ConnectivityResult result) => result != ConnectivityResult.none);
  }

  Stream<String> listenForSpeech(String languageCode, String serviceAccountJson) {
    _audioStream = BehaviorSubject<List<int>>();

    _audioStreamSubscription = _recorderStream.audioStream.listen((Uint8List audioSlice) {
      _audioStream.add(audioSlice);
    });

    final ServiceAccount serviceAccount = ServiceAccount.fromString(serviceAccountJson);
    final SpeechToText speechToText = SpeechToText.viaServiceAccount(serviceAccount);
    final RecognitionConfig config = _getConfig(languageCode);

    return speechToText
        .streamingRecognize(StreamingRecognitionConfig(config: config, interimResults: true), _audioStream)
        .map((response.StreamingRecognizeResponse data) => _getTextFromSpeech(data));
  }

  void initializeRecorder() {
    _recorderStream.initialize();
  }

  Future<bool> startRecorder() async {
    await _recorderStream.start();
    return true;
  }

  Future<bool> stopRecorder() async {
    await _recorderStream.stop();
    await _audioStreamSubscription?.cancel();
    await _audioStream?.close();
    responseText = '';

    return false;
  }

  String _getTextFromSpeech(response.StreamingRecognizeResponse data) {
    final String currentText =
        data.results.map((response.StreamingRecognitionResult e) => e.alternatives.first.transcript).join('\n');

    if (data.results.first.isFinal) {
      responseText += currentText;
      return responseText;
    } else {
      return responseText + currentText;
    }
  }

  RecognitionConfig _getConfig(String languageCode) {
    return RecognitionConfig(
        encoding: AudioEncoding.LINEAR16,
        model: RecognitionModel.basic,
        enableAutomaticPunctuation: true,
        sampleRateHertz: 16000,
        languageCode: languageCode);
  }
}
