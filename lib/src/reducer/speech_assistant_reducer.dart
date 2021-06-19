import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<SpeechAssistantState> speechAssistantReducer = combineReducers(<Reducer<SpeechAssistantState>>[
  TypedReducer<SpeechAssistantState, ListenForInternetStatusSuccessful>(_listenForInternetStatusSuccessful),
  TypedReducer<SpeechAssistantState, StartRecorderSuccessful>(_startRecorderSuccessful),
  TypedReducer<SpeechAssistantState, StopRecorderSuccessful>(_stopRecorderSuccessful),
  TypedReducer<SpeechAssistantState, ListenForSpeechSuccessful>(_listenForSpeechSuccessful),
]);

SpeechAssistantState _listenForInternetStatusSuccessful(
    SpeechAssistantState state, ListenForInternetStatusSuccessful action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => b.hasInternetConnection = action.hasInternetConnection);
}

SpeechAssistantState _startRecorderSuccessful(SpeechAssistantState state, StartRecorderSuccessful action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => b.isListening = action.isListening);
}

SpeechAssistantState _stopRecorderSuccessful(SpeechAssistantState state, StopRecorderSuccessful action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => b
    ..isListening = action.isListening
    ..recognizedText = '');
}

SpeechAssistantState _listenForSpeechSuccessful(SpeechAssistantState state, ListenForSpeechSuccessful action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => b.recognizedText = action.recognizedText);
}