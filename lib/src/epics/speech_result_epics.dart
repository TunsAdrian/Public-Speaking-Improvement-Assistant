import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/speech_result_api.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class SpeechResultEpics {
  const SpeechResultEpics({@required SpeechResultApi api})
      : assert(api != null),
        _api = api;

  final SpeechResultApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreateSpeechResult$>(_createSpeechResult),
      TypedEpic<AppState, GetSpeechResult$>(_getSpeechResult),
      TypedEpic<AppState, GetSpeechResultList$>(_getSpeechResultList),
      TypedEpic<AppState, RemoveSpeechResult$>(_removeSpeechResult),
      TypedEpic<AppState, SaveSpeechResult$>(_saveSpeechResult),
    ]);
  }

  Stream<AppAction> _createSpeechResult(Stream<CreateSpeechResult$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateSpeechResult$ action) => Stream<CreateSpeechResult$>.value(action)
            .asyncMap((CreateSpeechResult$ action) => _api.createSpeechResult(
                  speechDuration: action.speechDuration,
                  speechClarity: action.speechClarity,
                  speechFillerWords: action.speechFillerWords,
                  speechWords: action.speechWords,
                ))
            .map((SpeechResult speechResult) => CreateSpeechResult.successful(speechResult))
            .onErrorReturnWith((dynamic error) => CreateSpeechResult.error(error)));
  }

  Stream<AppAction> _getSpeechResult(Stream<GetSpeechResult$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetSpeechResult$ action) => Stream<GetSpeechResult$>.value(action)
            .asyncMap((GetSpeechResult$ action) => _api.getSpeechResult(speechResultName: action.speechResultName))
            .map((SpeechResult speechResult) => GetSpeechResult.successful(speechResult))
            .onErrorReturnWith((dynamic error) => GetSpeechResult.error(error)));
  }

  Stream<AppAction> _getSpeechResultList(Stream<GetSpeechResultList$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetSpeechResultList$ action) => Stream<GetSpeechResultList$>.value(action)
            .asyncMap((GetSpeechResultList$ action) => _api.getSpeechResultList())
            .map((List<SpeechResult> speechResultList) => GetSpeechResultList.successful(speechResultList))
            .onErrorReturnWith((dynamic error) => GetSpeechResultList.error(error)));
  }

  Stream<AppAction> _saveSpeechResult(Stream<SaveSpeechResult$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SaveSpeechResult$ action) => Stream<SaveSpeechResult$>.value(action)
            .asyncMap((SaveSpeechResult$ action) => _api.saveSpeechResult(speechResult: action.speechResult))
            .map((List<SpeechResult> speechResultList) => SaveSpeechResult.successful(speechResultList))
            .onErrorReturnWith((dynamic error) => SaveSpeechResult.error(error)));
  }

  Stream<AppAction> _removeSpeechResult(Stream<RemoveSpeechResult$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveSpeechResult$ action) => Stream<RemoveSpeechResult$>.value(action)
            .asyncMap((RemoveSpeechResult$ action) => _api.removeSpeechResult(speechResult: action.speechResult))
            .map((List<SpeechResult> speechResultList) => RemoveSpeechResult.successful(speechResultList))
            .onErrorReturnWith((dynamic error) => RemoveSpeechResult.error(error)));
  }
}
