import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

mixin DisplaySpeechWordMixin {
  TextSpan displaySpeechWord(SpeechWord word, Color textColor) {
    if (word.isFiller) {
      return TextSpan(
        text: word.text,
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.red,
        ),
      );
    } else {
      return TextSpan(
        text: word.text,
        style: TextStyle(
          fontSize: 24.0,
          color: textColor,
        ),
      );
    }
  }
}
