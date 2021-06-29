import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/align_leading_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class SpeechResultPage extends StatefulWidget {
  const SpeechResultPage({Key key}) : super(key: key);

  @override
  _SpeechResultPageState createState() => _SpeechResultPageState();
}

class _SpeechResultPageState extends State<SpeechResultPage> with AlignLeadingMixin {
  final TextEditingController _speechNameTextController = TextEditingController();
  final GlobalKey<FormState> _speechNameFormKey = GlobalKey<FormState>();
  bool _tileEnabled = true;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Speech Statistics'),
        ),
        body: SpeechResultContainer(
          builder: (BuildContext context, SpeechResult speechResult) {
            return Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        minLeadingWidth: 75.0,
                        leading: alignedLeading(const Text('Title')),
                        title: Text(speechResult?.speechName ?? '-'),
                        trailing: const Icon(Icons.text_fields_outlined),
                        enabled: _tileEnabled,
                        onTap: () {
                          _showSpeechSaveDialog(context, speechResult);
                        },
                      ),
                      const Divider(thickness: 1),
                      ListTile(
                        minLeadingWidth: 75.0,
                        leading: alignedLeading(const Text('Time')),
                        title: Text(speechResult.speechDuration.toString().substring(2, 7)),
                        enabled: _tileEnabled,
                      ),
                      const Divider(thickness: 1),
                      ListTile(
                        minLeadingWidth: 75.0,
                        leading: alignedLeading(const Text('Pace')),
                        title: Text('${speechResult.wordsPerMinute.round()} words/min'),
                        enabled: _tileEnabled,
                      ),
                      const Divider(thickness: 1),
                      ListTile(
                        minLeadingWidth: 75.0,
                        leading: alignedLeading(const Text('Confidence')),
                        title: speechResult.speechConfidence != 0
                            ? Text('${(speechResult.speechConfidence * 100.0).toStringAsFixed(1)}%')
                            : const Text('Not computed'),
                        enabled: _tileEnabled,
                      ),
                      const Divider(thickness: 1),
                      ListTile(
                        minLeadingWidth: 75.0,
                        leading: alignedLeading(const Text('All Words')),
                        title: Text('${speechResult.speechWords.length} words'),
                        enabled: _tileEnabled,
                      ),
                      const Divider(thickness: 1),
                      ListTile(
                        minLeadingWidth: 75.0,
                        leading: alignedLeading(const Text('Filler Words')),
                        title: Text('${speechResult.speechWords.where((SpeechWord word) => word.isFiller).length}'),
                        enabled: _tileEnabled,
                      ),
                      const Divider(thickness: 1),
                      Visibility(
                        visible: arguments != null ? arguments['showDetailedSpeechTile'] : true,
                        child: ListTile(
                          minLeadingWidth: 75.0,
                          leading: const Icon(Icons.info_outline_rounded),
                          title: const Text('See the Speech Transcript'),
                          trailing: const Icon(Icons.chevron_right),
                          enabled: _tileEnabled,
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.full_speech_transcript);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('Discard And Exit'),
                        onPressed: () {
                          Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                        },
                      ),
                      ElevatedButton(
                        child: const Text('Save This Speech'),
                        onPressed: () async {
                          if (speechResult.speechName == null) {
                            final SnackBar snackBarNameSpeech = SnackBar(
                              margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                              behavior: SnackBarBehavior.floating,
                              content: const Text('Please name your speech first'),
                              action: SnackBarAction(
                                label: 'Name',
                                onPressed: () {
                                  _showSpeechSaveDialog(context, speechResult);
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBarNameSpeech);
                          } else {
                            StoreProvider.of<AppState>(context).dispatch(SaveSpeechResult(speechResult: speechResult));
                            final SnackBar snackBarSaveSuccess = SnackBar(
                              margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                              behavior: SnackBarBehavior.floating,
                              content: const Text('Speech result was successfully saved'),
                            );

                            // disable the field after the save operation was done and wait for the navigator
                            setState(() {
                              _tileEnabled = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBarSaveSuccess);

                            // wait for 1.5 second, so the snackbar message can be read
                            await Future<void>.delayed(const Duration(milliseconds: 1500), () {});

                            Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<String> _showSpeechSaveDialog(BuildContext context, SpeechResult speechResult) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SavedSpeechResultsNamesContainer(
          builder: (BuildContext context, List<String> speechResultNames) {
            return Form(
              key: _speechNameFormKey,
              child: AlertDialog(
                contentPadding: const EdgeInsets.all(16.0),
                content: TextFormField(
                  controller: _speechNameTextController,
                  decoration: const InputDecoration(labelText: 'Speech Name', hintText: 'e.g. School speech'),
                  autofocus: true,
                  validator: (String value) {
                    if (value.isEmpty || value.trim().isEmpty || value.trim().length < 4) {
                      return 'Please enter a valid name';
                    } else if (speechResultNames.contains(value)) {
                      return 'This name was already used';
                    }
                    return null;
                  },
                ),
                actions: <Widget>[
                  TextButton(
                      child: const Text('CANCEL'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  OutlinedButton(
                    child: const Text('SAVE'),
                    onPressed: () {
                      if (_speechNameFormKey.currentState.validate()) {
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateSpeechResult(speechName: _speechNameTextController.text.trim()));
                        Navigator.pop(context);
                      }
                    },
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
