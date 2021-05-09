import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:public_speaking_assistant/src/data/filler_words_api.dart';
import 'package:public_speaking_assistant/src/epics/auth_epics.dart';
import 'package:public_speaking_assistant/src/epics/filler_words_epics.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:meta/meta.dart';

class AppEpics {
  const AppEpics({
    @required AuthApi authApi,
    @required FillerWordsApi fillerWordsApi,
  })  : assert(authApi != null),
        assert(fillerWordsApi != null),
        _authApi = authApi,
        _fillerWordsApi = fillerWordsApi;

  final AuthApi _authApi;
  final FillerWordsApi _fillerWordsApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      FillerWordsEpics(api: _fillerWordsApi).epics,
    ]);
  }
}
