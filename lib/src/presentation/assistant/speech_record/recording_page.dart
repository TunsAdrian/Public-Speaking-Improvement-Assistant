import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/data/speech_to_text_api.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/speech_record/substring_highlight.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

// todo: properly implement this mechanism with redux
class RecordingPage extends StatefulWidget {
  const RecordingPage({Key key}) : super(key: key);

  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  List<String> words = <String>['like', 'yeah'];
  SpeechToTextApi speechToTextApi = SpeechToTextApi(speech: SpeechToText());
  String text = 'Press the button and start speaking';
  bool isListening = false;
  double confidence = 1.0;

  // todo: move this functionality away from the presentation layer
  Future<bool> _toggleRecording() => speechToTextApi.toggleRecording(
        onResult: (SpeechRecognitionResult speechResult) => setState(() {
          text = speechResult.recognizedWords;
          if (speechResult.hasConfidenceRating && speechResult.confidence > 0) {
            confidence = speechResult.confidence;
          }
        }),
        onListening: (bool isListening) {
          setState(() => this.isListening = isListening);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Public Speaking Assistant'),
        title: Text('Confidence: ${(confidence * 100.0).toStringAsFixed(1)}%'),
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
          onPressed: _toggleRecording,
        ),
      ),
    );
  }
}
