import 'dart:async';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:google_speech/generated/google/cloud/speech/v1/cloud_speech.pb.dart' as response;
import 'package:google_speech/google_speech.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

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
  List<String> _fillerWords;

  Stream<bool> listenInternetStatus() {
    return _connectivity //
        .onConnectivityChanged
        .map((ConnectivityResult result) => result != ConnectivityResult.none);
  }

  Stream<Tuple2<List<SpeechWord>, bool>> listenForSpeech(
    String languageCode,
    String serviceAccountJson,
    List<String> fillerWords,
  ) {
    _fillerWords = fillerWords.map((String word) => word.toLowerCase()).toList();
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

    return false;
  }

  Tuple2<List<SpeechWord>, bool> _getTextFromSpeech(response.StreamingRecognizeResponse data) {
    final List<String> currentText = data.results.map((response.StreamingRecognitionResult e) => //
        e.alternatives.first.transcript).join('\n').split(' ');
    currentText.removeWhere((String word) => word.isEmpty);

    if (data.results.first.isFinal) {
      return Tuple2<List<SpeechWord>, bool>(_checkFillerWords(currentText), true);
    } else {
      return Tuple2<List<SpeechWord>, bool>(_checkFillerWords(currentText), false);
    }
  }

  List<SpeechWord> _checkFillerWords(List<String> words) {
    return words.map((String word) {
      // replace anything that is not a word, in order to check for words only
      if (_fillerWords.contains(word.replaceAll(RegExp(r'[^\w]+'), '').toLowerCase())) {
        return SpeechWord((SpeechWordBuilder b) {
          b
            ..text = '$word '
            ..isFiller = true;
        });
      } else {
        return SpeechWord((SpeechWordBuilder b) {
          b
            ..text = '$word '
            ..isFiller = false;
        });
      }
    }).toList();
  }

  RecognitionConfig _getConfig(String languageCode) {
    final response.RecognitionMetadata metadata = response.RecognitionMetadata();
    metadata.originalMediaType = response.RecognitionMetadata_OriginalMediaType.AUDIO;
    metadata.microphoneDistance = response.RecognitionMetadata_MicrophoneDistance.NEARFIELD;

    return RecognitionConfig(
        encoding: AudioEncoding.LINEAR16,
        model: RecognitionModel.basic,
        enableAutomaticPunctuation: true,
        sampleRateHertz: 16000,
        languageCode: languageCode,
        recognitionMetadata: metadata);
  }
}
