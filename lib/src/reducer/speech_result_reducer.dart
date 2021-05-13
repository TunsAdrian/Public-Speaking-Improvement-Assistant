import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<SpeechResultState> speechResultReducer = combineReducers(<Reducer<SpeechResultState>>[
  TypedReducer<SpeechResultState, CreateSpeechResultSuccessful>(_createSpeechResultSuccessful),
  TypedReducer<SpeechResultState, GetSpeechResultListSuccessful>(_getSpeechResultListSuccessful),
  TypedReducer<SpeechResultState, SaveSpeechResultSuccessful>(_saveSpeechResultSuccessful),
  TypedReducer<SpeechResultState, RemoveSpeechResultSuccessful>(_removeSpeechResultSuccessful),
]);

SpeechResultState _createSpeechResultSuccessful(SpeechResultState state, CreateSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.speechResultList = ListBuilder<SpeechResult>(<SpeechResult>[action.speechResult]);
  });
}

SpeechResultState _getSpeechResultListSuccessful(SpeechResultState state, GetSpeechResultListSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.speechResultList = ListBuilder<SpeechResult>(action.speechResultList);
  });
}

SpeechResultState _saveSpeechResultSuccessful(SpeechResultState state, SaveSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.speechResultList = ListBuilder<SpeechResult>(action.speechResultList);
  });
}

SpeechResultState _removeSpeechResultSuccessful(SpeechResultState state, RemoveSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.speechResultList = ListBuilder<SpeechResult>(action.speechResultList);
  });
}
