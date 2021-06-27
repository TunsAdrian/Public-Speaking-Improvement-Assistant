import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/speech_assistant_api.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

class SpeechAssistantEpics {
  const SpeechAssistantEpics({@required SpeechAssistantApi api})
      : assert(api != null),
        _api = api;

  final SpeechAssistantApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, InitializeRecorder$>(_initializeRecorder),
      TypedEpic<AppState, StartRecorder$>(_startRecorder),
      TypedEpic<AppState, StopRecorder$>(_stopRecorder),
      _listenForInternetStatus,
      _listenForSpeech,
    ]);
  }

  Stream<AppAction> _initializeRecorder(Stream<InitializeRecorder$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeRecorder$ action) => Stream<InitializeRecorder$>.value(action)
            .asyncMap((InitializeRecorder$ action) => _api.initializeRecorder())
            .mapTo(const InitializeRecorder.successful())
            .onErrorReturnWith((dynamic error) => InitializeRecorder.error(error)));
  }

  Stream<AppAction> _startRecorder(Stream<StartRecorder$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((StartRecorder$ action) => Stream<StartRecorder$>.value(action)
            .asyncMap((StartRecorder$ action) => _api.startRecorder())
            .map((bool isListening) => StartRecorder.successful(isListening))
            .onErrorReturnWith((dynamic error) => StartRecorder.error(error)));
  }

  Stream<AppAction> _stopRecorder(Stream<StopRecorder$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((StopRecorder$ action) => Stream<StopRecorder$>.value(action)
            .asyncMap((StopRecorder$ action) => _api.stopRecorder())
            .map((bool isListening) => StopRecorder.successful(isListening))
            .onErrorReturnWith((dynamic error) => StopRecorder.error(error)));
  }

  Stream<AppAction> _listenForInternetStatus(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForInternetStatus$>()
        .flatMap((ListenForInternetStatus$ action) => _api
            .listenInternetStatus()
            .map((bool hasInternetConnection) => ListenForInternetStatus.successful(hasInternetConnection))
            .takeUntil(actions.whereType<StopListeningForInternetStatus$>()) // close the stream on this action
            .onErrorReturnWith((dynamic error) => ListenForInternetStatus.error(error)));
  }

  Stream<AppAction> _listenForSpeech(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForSpeech$>()
        .flatMap((ListenForSpeech$ action) => _api
            .listenForSpeech(action.languageCode, action.serviceAccount, store.state.fillerWords.fillerWords.toList())
            .map((Tuple2<List<SpeechWord>, bool> recognizedTextTuple) {
              // if the recognized text is marked as final, send it to successful constructor; otherwise, to the partial one
              if (recognizedTextTuple.item2) {
                return ListenForSpeech.successful(recognizedTextTuple.item1);
              } else {
                return ListenForSpeech.partial(recognizedTextTuple.item1);
              }
            })
            .takeUntil(actions.whereType<StopListeningForSpeech$>()) // close the stream on this action
            .onErrorReturnWith((dynamic error) => ListenForSpeech.error(error)));
  }
}
