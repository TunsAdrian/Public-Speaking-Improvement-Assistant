import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/epics/app_epics.dart';
import 'package:public_speaking_assistant/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  const AppEpics epic = AppEpics();

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[EpicMiddleware<AppState>(epic.epics)],
  );
}
