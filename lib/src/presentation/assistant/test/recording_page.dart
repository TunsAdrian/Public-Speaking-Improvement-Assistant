import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/data/speech_to_text_api.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/test/substring_highlighted.dart';

// todo: properly implement this mechanism with redux
class SpeechScreen extends StatefulWidget {
  const SpeechScreen({Key key}) : super(key: key);

  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  List<String> words = <String>['like', 'yeah'];
  String text = 'Press the button and start speaking';
  bool isListening = false;

  Future<bool> toggleRecording() => SpeechToTextAPI.toggleRecording(
        onResult: (String text) => setState(() => this.text = text),
        onListening: (bool isListening) {
          setState(() => this.isListening = isListening);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Public Speaking Assistant'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
        padding: const EdgeInsets.all(30).copyWith(bottom: 150),
        child: SubstringHighlight(
          text: text,
          terms: words,
          textStyle: const TextStyle(
            fontSize: 32.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          textStyleHighlight: const TextStyle(
            fontSize: 32.0,
            color: Colors.red,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: isListening,
        endRadius: 75,
        glowColor: Theme.of(context).primaryColor,
        child: FloatingActionButton(
          child: Icon(isListening ? Icons.mic : Icons.mic_none, size: 36),
          onPressed: toggleRecording,
        ),
      ),
    );
  }
}
