import 'dart:async';
import 'dart:convert';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:public_speaking_assistant/src/actions/filler_words/index.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/index.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveLanguagePair.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/speech_record/substring_highlight.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:select_dialog/select_dialog.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({Key key}) : super(key: key);

  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  List<String> _speechFillerWords = <String>[];
  final Stopwatch _stopwatch = Stopwatch();
  final double _clarity = 1.0;
  String _serviceAccount;

  List<HiveLanguagePair> _languagesList;
  Map<String, dynamic> _languagesMap;

  Future<void> getLanguageData() async {
    final String jsonText = await rootBundle.loadString('assets/language_codes.json');
    _languagesMap = json.decode(jsonText);
    _languagesList = _languagesMap.entries
        .map((MapEntry<String, dynamic> entry) => HiveLanguagePair(entry.key, entry.value))
        .toList();
  }

  Future<void> getServiceAccount() async {
    _serviceAccount = await rootBundle.loadString('private/account/public-speaking-assistant-901b39fe03fb.json');
  }

  @override
  void initState() {
    super.initState();
    getLanguageData();
    getServiceAccount();

    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetFillerWords());
    StoreProvider.of<AppState>(context, listen: false).dispatch(const InitializeRecorder());
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: Hive.box<dynamic>('settings').listenable(),
      builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
        final HiveLanguagePair _selectedSpeechLanguage =
            settingsBox.get('speech_language', defaultValue: HiveLanguagePair('English (United States)', 'en-US'));

        return InternetConnectionContainer(
          builder: (BuildContext context, bool hasInternetConnection) {
            return FillerWordsContainer(
              builder: (BuildContext context, List<String> fillerWords) {
                return ListenSpeechContainer(
                  builder: (BuildContext context, bool isListening) {
                    return RecognizedTextContainer(
                      builder: (BuildContext context, String recognizedText) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('Public Speaking Assistant'),
                            actions: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.language_outlined),
                                tooltip: 'Select Language',
                                onPressed: !isListening
                                    ? () {
                                        _showLanguagePickerDialog(settingsBox, _selectedSpeechLanguage);
                                      }
                                    : null,
                              ),
                            ],
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Visibility(
                                visible: !isListening,
                                child: ListTile(
                                  title: Text(
                                    '$_selectedSpeechLanguage is the currently selected language',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: recognizedText.isEmpty,
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(16),
                                    child: const Text(
                                      'Press the button and start speaking...',
                                      style: TextStyle(fontSize: 24.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: !hasInternetConnection,
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(16),
                                    child: RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          fontSize: 24.0,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        text: 'Internet connection lost...',
                                        children: <TextSpan>[
                                          if (isListening) const TextSpan(text: '\nPlease stop your recording')
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: isListening,
                                //todo: auto-scroll on content recognized text
                                child: SingleChildScrollView(
                                  reverse: true,
                                  padding: const EdgeInsets.all(30).copyWith(bottom: 150),
                                  // todo: change this mechanism: send the fillerWords only once
                                  child: SubstringHighlight(
                                    text: recognizedText,
                                    terms: fillerWords,
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
                                ),
                              ),
                            ],
                          ),
                          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                          floatingActionButton: AvatarGlow(
                            animate: isListening,
                            endRadius: 75,
                            glowColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
                            child: FloatingActionButton(
                              child: Icon(isListening ? Icons.mic : Icons.mic_none, size: 36),
                              onPressed: () {
                                if (!isListening) {
                                  _stopwatch.start();
                                  StoreProvider.of<AppState>(context).dispatch(const StartRecorder());
                                  StoreProvider.of<AppState>(context).dispatch(ListenForSpeech(
                                    languageCode: _selectedSpeechLanguage.languageCode,
                                    serviceAccount: _serviceAccount,
                                  ));
                                } else {
                                  _stopwatch.stop();
                                  StoreProvider.of<AppState>(context).dispatch(const StopListeningForSpeech());
                                  StoreProvider.of<AppState>(context).dispatch(const StopRecorder());

                                  if (recognizedText.isNotEmpty) {
                                    _speechFillerWords = fillerWords
                                        .where((String term) => recognizedText //
                                            .toLowerCase()
                                            .contains(term))
                                        .toList();

                                    StoreProvider.of<AppState>(context).dispatch(CreateSpeechResult(
                                      speechDuration: _stopwatch.elapsed,
                                      speechClarity: _clarity,
                                      wordsPerMinute:
                                          (recognizedText.split(' ').length / _stopwatch.elapsed.inSeconds) * 60,
                                      speechWords: recognizedText.split(' '),
                                      speechFillerWords: _speechFillerWords,
                                    ));

                                    Navigator.pushNamed(context, AppRoutes.speech_result);
                                  }
                                }
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Future<void> _showLanguagePickerDialog(
    Box<dynamic> settingsBox,
    HiveLanguagePair _selectedSpeechLanguage,
  ) async {
    SelectDialog.showModal<HiveLanguagePair>(
      context,
      showSearchBox: true,
      label: 'Select Speech Language',
      searchHint: 'Find speech language',
      selectedValue: _languagesList
          .where((HiveLanguagePair entry) => entry.languageCode == _selectedSpeechLanguage.languageCode)
          .first,
      items: _languagesList.map((HiveLanguagePair languagePair) {
        return languagePair;
      }).toList(),
      onChange: (HiveLanguagePair selectedSpeechLanguage) {
        setState(() {
          settingsBox.put('speech_language', selectedSpeechLanguage);
        });
      },
    );
  }
}
