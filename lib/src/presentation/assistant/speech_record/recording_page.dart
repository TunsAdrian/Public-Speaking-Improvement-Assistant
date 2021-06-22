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
import 'package:redux/redux.dart';
import 'package:select_dialog/select_dialog.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({Key key}) : super(key: key);

  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  Store<AppState> store;
  List<String> _speechFillerWords = <String>[];
  final Stopwatch _stopwatch = Stopwatch();
  final double _clarity = 1.0;
  String _serviceAccount;

  bool _isListening = false;
  bool _hasInternetConnection = false;
  String _recognizedText = '';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(const GetFillerWords());
      store.dispatch(const InitializeRecorder());
    });
  }

  @override
  void dispose() {
    store.dispatch(const StopListeningForSpeech());
    store.dispatch(const StopRecorder());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: Hive.box<dynamic>('settings').listenable(),
      builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
        final HiveLanguagePair _selectedSpeechLanguage =
            settingsBox.get('speech_language', defaultValue: HiveLanguagePair('English (United States)', 'en-US'));

        return FillerWordsContainer(
          builder: (BuildContext context, List<String> fillerWords) {
            return SpeechAssistantContainer(
              builder: (BuildContext context, SpeechAssistantState speechAssistantState) {
                _hasInternetConnection = speechAssistantState?.hasInternetConnection ?? false;
                _isListening = speechAssistantState?.isListening ?? false;
                _recognizedText = speechAssistantState?.recognizedText ?? '';

                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Speech Rehearsal'),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.language_outlined),
                        tooltip: 'Select Language',
                        onPressed: !_isListening
                            ? () {
                                _showLanguagePickerDialog(settingsBox, _selectedSpeechLanguage);
                              }
                            : null,
                      ),
                    ],
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Visibility(
                        visible: !_isListening,
                        child: ListTile(
                          title: Text(
                            '$_selectedSpeechLanguage is the currently selected language',
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _recognizedText.isEmpty,
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
                        visible: !_hasInternetConnection,
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
                                  if (_isListening) const TextSpan(text: '\nPlease stop your recording')
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Visibility(
                          visible: _recognizedText.isNotEmpty,
                          child: SingleChildScrollView(
                            reverse: true,
                            padding: const EdgeInsets.all(30).copyWith(bottom: 170),
                            // todo: change this mechanism: send the fillerWords only once
                            child: SubstringHighlight(
                              text: _recognizedText,
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
                      ),
                    ],
                  ),
                  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: AvatarGlow(
                    animate: _isListening,
                    endRadius: 75,
                    glowColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
                    child: FloatingActionButton(
                      child: Icon(_isListening ? Icons.mic : Icons.mic_none, size: 36),
                      onPressed: () {
                        if (!_isListening) {
                          _stopwatch.start();
                          store.dispatch(const StartRecorder());
                          store.dispatch(ListenForSpeech(
                            languageCode: _selectedSpeechLanguage.languageCode,
                            serviceAccount: _serviceAccount,
                          ));
                        } else {
                          _stopwatch.stop();
                          final Duration _speechTime = _stopwatch.elapsed;
                          _stopwatch.reset();
                          store.dispatch(const StopListeningForSpeech());
                          store.dispatch(const StopRecorder());

                          if (_recognizedText.isNotEmpty) {
                            _speechFillerWords = fillerWords
                                .where((String term) => _recognizedText //
                                    .toLowerCase()
                                    .contains(term))
                                .toList();

                            store.dispatch(CreateSpeechResult(
                              speechDuration: _speechTime,
                              speechClarity: _clarity,
                              wordsPerMinute: (_recognizedText.split(' ').length / _speechTime.inSeconds) * 60,
                              speechWords: _recognizedText.split(' '),
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
