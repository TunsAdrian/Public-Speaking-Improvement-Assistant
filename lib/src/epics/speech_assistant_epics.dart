import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/speech_assistant_api.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class SpeechAssistantEpics {
  const SpeechAssistantEpics({@required SpeechAssistantApi api})
      : assert(api != null),
        _api = api;

  final SpeechAssistantApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      _listenForInternetStatus,
    ]);
  }

  Stream<AppAction> _listenForInternetStatus(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForInternetStatus$>()
        .flatMap((ListenForInternetStatus$ action) => _api
            .listenInternetStatus()
            .map((bool hasInternetConnection) => ListenForInternetStatus.successful(hasInternetConnection))
            .takeUntil(actions.whereType<StopListeningForInternetStatus>()) // close the stream on this action
            .onErrorReturnWith((dynamic error) => ListenForInternetStatus.error(error)));
  }
}
