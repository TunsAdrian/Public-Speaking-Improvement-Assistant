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
        title: const Text('Detailed Speech'),
      ),
      body: SpeechResultContainer(
        builder: (BuildContext context, SpeechResult speechResult) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Visibility(
                visible: speechResult.speechName != null,
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    speechResult.speechName ?? '',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: SubstringHighlight(
                    text: speechResult.speechWords.toList().join(' '),
                    terms: speechResult.speechFillerWords.toList(),
                    textStyle: TextStyle(
                      fontSize: 32.0,
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontWeight: FontWeight.w400,
                    ),
                    textStyleHighlight: const TextStyle(
                      fontSize: 32.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
