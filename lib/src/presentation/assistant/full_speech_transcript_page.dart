import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/containers/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/speech_record/substring_highlight.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class DetailedSpeechResultPage extends StatelessWidget {
  const DetailedSpeechResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    return SpeechResultContainer(
      builder: (BuildContext context, SpeechResult speechResult) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Full Speech Transcript'),
            actions: <Widget>[
              Visibility(
                visible: arguments != null ? arguments['fromLibrary'] : false,
                child: Tooltip(
                  message: 'See the speech statistics',
                  child: IconButton(
                    icon: const Icon(Icons.info_outline_rounded),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.speech_result,
                        arguments: <String, dynamic>{'showDetailedSpeechTile': false},
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Visibility(
                  visible: speechResult.speechName != null,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        speechResult.speechName ?? '',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                SubstringHighlight(
                  text: speechResult.speechWords.toList().join(' '),
                  terms: speechResult.speechFillerWords.toList(),
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontWeight: FontWeight.w400,
                  ),
                  textStyleHighlight: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
