import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<SpeechAssistantState> speechAssistantReducer = combineReducers(<Reducer<SpeechAssistantState>>[
  TypedReducer<SpeechAssistantState, ListenForInternetStatusSuccessful>(_listenForInternetStatusSuccessful),
  TypedReducer<SpeechAssistantState, StartRecorderSuccessful>(_startRecorderSuccessful),
  TypedReducer<SpeechAssistantState, StopRecorderSuccessful>(_stopRecorderSuccessful),
  TypedReducer<SpeechAssistantState, ListenForSpeechSuccessful>(_listenForSpeechSuccessful),
  TypedReducer<SpeechAssistantState, ListenForSpeechPartial>(_listenForSpeechPartial),
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
    ..confidence = 0.0
    ..isListening = action.isListening
    ..recognizedText = ListBuilder<SpeechWord>()
    ..possibleText = ListBuilder<SpeechWord>());
}

SpeechAssistantState _listenForSpeechSuccessful(SpeechAssistantState state, ListenForSpeechSuccessful action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => b
    ..recognizedText.addAll(action.recognizedTextWithConfidence.item1)
    ..confidence = action.recognizedTextWithConfidence.item2
    ..possibleText = ListBuilder<SpeechWord>());
}

SpeechAssistantState _listenForSpeechPartial(SpeechAssistantState state, ListenForSpeechPartial action) {
  return state.rebuild((SpeechAssistantStateBuilder b) => //
      b.possibleText = ListBuilder<SpeechWord>(action.recognizedText));
}
