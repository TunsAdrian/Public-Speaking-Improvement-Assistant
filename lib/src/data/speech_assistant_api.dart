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
  double _confidenceSum = 0.0;
  int _confidenceCount = 0;

  Stream<bool> listenInternetStatus() {
    return _connectivity //
        .onConnectivityChanged
        .map((ConnectivityResult result) => result != ConnectivityResult.none);
  }

  Stream<Tuple3<List<SpeechWord>, bool, double>> listenForSpeech(
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
        .map((response.StreamingRecognizeResponse data) => _getTextFromSpeechWithConfidence(data));
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
    _confidenceSum = 0.0;
    _confidenceCount = 0;

    return false;
  }

  Tuple3<List<SpeechWord>, bool, double> _getTextFromSpeechWithConfidence(response.StreamingRecognizeResponse data) {
    final List<String> currentText = data.results.map((response.StreamingRecognitionResult e) => //
        e.alternatives.first.transcript).join('\n').split(' ');
    currentText.removeWhere((String word) => word.isEmpty);

    if (data.results.first.isFinal) {
      return Tuple3<List<SpeechWord>, bool, double>(_checkFillerWords(currentText), true, _getConfidence(data.results));
    } else {
      return Tuple3<List<SpeechWord>, bool, double>(_checkFillerWords(currentText), false, null);
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

  double _getConfidence(List<response.StreamingRecognitionResult> results) {
    final double currentSum = results.fold<double>(
        0, (double prev, response.StreamingRecognitionResult result) => prev + result.alternatives.first.confidence);

    if (currentSum == 0.0) {
      return currentSum;
    }

    _confidenceSum += currentSum;
    _confidenceCount++;

    return _confidenceSum / _confidenceCount;
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
