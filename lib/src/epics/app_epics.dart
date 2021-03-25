import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:public_speaking_assistant/src/epics/auth_epics.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:meta/meta.dart';

class AppEpics {
  const AppEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
    ]);
  }
}
