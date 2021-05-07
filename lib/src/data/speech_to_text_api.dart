import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextApi {
  const SpeechToTextApi({
    @required SpeechToText speech,
  })  : assert(speech != null),
        _speech = speech;

  final SpeechToText _speech;

  Future<bool> toggleRecording({
    @required Function(SpeechRecognitionResult speechResult) onResult,
    @required ValueChanged<bool> onListening,
  }) async {
    // Ensure that on button click the listening process starts and stops as it should
    if (_speech.isListening) {
      _speech.stop();
      return true;
    }

    final bool isSpeechInitialised = await _speech.initialize(
      onStatus: (String status) => onListening(_speech.isListening),
      onError: (SpeechRecognitionError e) => print('SpeechToText error: $e'),
    );

    if (isSpeechInitialised) {
      _speech.listen(
        onResult: (SpeechRecognitionResult value) => onResult(value),
        pauseFor: const Duration(seconds: 10),
        listenFor: const Duration(minutes: 20),
        listenMode: ListenMode.dictation,
      );
    }

    return isSpeechInitialised;
  }
}
