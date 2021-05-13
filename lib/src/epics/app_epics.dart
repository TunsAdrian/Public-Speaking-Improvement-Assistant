import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:public_speaking_assistant/src/data/filler_words_api.dart';
import 'package:public_speaking_assistant/src/data/speech_result_api.dart';
import 'package:public_speaking_assistant/src/epics/auth_epics.dart';
import 'package:public_speaking_assistant/src/epics/filler_words_epics.dart';
import 'package:public_speaking_assistant/src/epics/speech_result_epics.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:meta/meta.dart';

class AppEpics {
  const AppEpics({
    @required AuthApi authApi,
    @required FillerWordsApi fillerWordsApi,
    @required SpeechResultApi speechResultApi,
  })  : assert(authApi != null),
        assert(fillerWordsApi != null),
        assert(speechResultApi != null),
        _authApi = authApi,
        _fillerWordsApi = fillerWordsApi,
        _speechResultApi = speechResultApi;

  final AuthApi _authApi;
  final FillerWordsApi _fillerWordsApi;
  final SpeechResultApi _speechResultApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      FillerWordsEpics(api: _fillerWordsApi).epics,
      SpeechResultEpics(api: _speechResultApi).epics,
    ]);
  }
}
