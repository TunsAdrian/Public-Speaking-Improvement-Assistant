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
import 'package:public_speaking_assistant/src/presentation/mixin/display_speech_word_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:redux/redux.dart';
import 'package:select_dialog/select_dialog.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({Key key}) : super(key: key);

  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> with DisplaySpeechWordMixin {
  Store<AppState> store;
  final Stopwatch _stopwatch = Stopwatch();
  final double _clarity = 1.0;
  String _serviceAccount;

  bool _isListening = false;
  bool _hasInternetConnection = false;
  List<SpeechWord> _recognizedText = <SpeechWord>[];
  List<SpeechWord> _partialText = <SpeechWord>[];

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

        return SpeechAssistantContainer(
          builder: (BuildContext context, SpeechAssistantState speechAssistantState) {
            _hasInternetConnection = speechAssistantState?.hasInternetConnection ?? false;
            _isListening = speechAssistantState?.isListening ?? false;
            _partialText = speechAssistantState?.possibleText?.toList() ?? <SpeechWord>[];
            _recognizedText = speechAssistantState?.recognizedText?.toList() ?? <SpeechWord>[];

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
              body: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 150.0),
                reverse: true,
                child: Column(
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
                      visible: _recognizedText.isEmpty && _partialText.isEmpty,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: const Text(
                            'Press the button and start speaking...',
                            style: TextStyle(fontSize: 24.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    // todo: add a live stopwatch widget here
                    Visibility(
                      visible: !_hasInternetConnection,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RichText(
                        text: TextSpan(
                          children: <InlineSpan>[
                            for (SpeechWord word in _recognizedText)
                              displaySpeechWord(word, Theme.of(context).textTheme.bodyText1.color),
                            for (SpeechWord word in _partialText)
                              displaySpeechWord(word, Theme.of(context).textTheme.bodyText1.color),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                      _recognizedText.addAll(_partialText);

                      if (_recognizedText.isNotEmpty) {
                        store.dispatch(CreateSpeechResult(
                          speechDuration: _speechTime,
                          speechClarity: _clarity,
                          wordsPerMinute: (_recognizedText.length / _speechTime.inSeconds) * 60,
                          speechWords: _recognizedText,
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
