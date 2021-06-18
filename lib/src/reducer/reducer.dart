import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/reducer/auth_reducer.dart';
import 'package:public_speaking_assistant/src/reducer/filler_words_reducer.dart';
import 'package:public_speaking_assistant/src/reducer/speech_assistant_reducer.dart';
import 'package:public_speaking_assistant/src/reducer/speech_result_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..fillerWords = fillerWordsReducer(state.fillerWords, action).toBuilder()
      ..speechResult = speechResultReducer(state.speechResult, action).toBuilder()
      ..speechAssistant = speechAssistantReducer(state.speechAssistant, action).toBuilder();
  });
}
