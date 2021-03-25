import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

// ignore: avoid_classes_with_only_static_members
class SpeechToTextAPI {
  static final SpeechToText _speech = SpeechToText();

  static Future<bool> toggleRecording({
    @required Function(String text) onResult,
    @required ValueChanged<bool> onListening,
  }) async {
    if (_speech.isListening) {
      _speech.stop();
      return true;
    }

    final bool isAvailable = await _speech.initialize(
      onStatus: (String status) => onListening(_speech.isListening),
      onError: (SpeechRecognitionError e) => print('Error: $e'),
    );

    if (isAvailable) {
      _speech.listen(
        onResult: (SpeechRecognitionResult value) => onResult(value.recognizedWords),
        listenFor: const Duration(minutes: 20),
        pauseFor: const Duration(seconds: 10),
      );
    }

    return isAvailable;
  }
}
