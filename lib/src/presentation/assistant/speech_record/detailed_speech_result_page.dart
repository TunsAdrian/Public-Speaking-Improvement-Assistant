import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/containers/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/speech_record/substring_highlight.dart';

class DetailedSpeechResultPage extends StatelessWidget {
  const DetailedSpeechResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Speech Content'),
        centerTitle: true,
      ),
      body: SpeechResultContainer(
        builder: (BuildContext context, SpeechResult speechResult) {
          return DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyText2,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  reverse: true,
                  padding: const EdgeInsets.all(30),
                  child: SubstringHighlight(
                    text: speechResult.speechWords.toList().join(' '),
                    terms: speechResult.speechFillerWords.toList(),
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
                );
              },
            ),
          );
        },
      ),
    );
  }
}
