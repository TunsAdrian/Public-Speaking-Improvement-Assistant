import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<SpeechAssistantState> speechAssistantReducer = combineReducers(<Reducer<SpeechAssistantState>>[
  TypedReducer<SpeechAssistantState, ListenForInternetStatusSuccessful>(_listenForInternetStatusSuccessful),
]);

SpeechAssistantState _listenForInternetStatusSuccessful(
    SpeechAssistantState state, ListenForInternetStatusSuccessful action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => b.hasInternetConnection = action.hasInternetConnection);
}
