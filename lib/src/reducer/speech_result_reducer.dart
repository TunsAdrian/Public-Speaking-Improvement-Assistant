import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<SpeechResultState> speechResultReducer = combineReducers(<Reducer<SpeechResultState>>[
  TypedReducer<SpeechResultState, CreateSpeechResultSuccessful>(_createSpeechResultSuccessful),
  TypedReducer<SpeechResultState, GetSpeechResultListSuccessful>(_getSpeechResultListSuccessful),
  TypedReducer<SpeechResultState, SaveSpeechResultSuccessful>(_saveSpeechResultSuccessful),
  TypedReducer<SpeechResultState, RemoveSpeechResultSuccessful>(_removeSpeechResultSuccessful),
  TypedReducer<SpeechResultState, UpdateSpeechResult>(_updateSpeechResult),
]);

SpeechResultState _createSpeechResultSuccessful(SpeechResultState state, CreateSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.speechResult = action.speechResult?.toBuilder();
  });
}

SpeechResultState _getSpeechResultListSuccessful(SpeechResultState state, GetSpeechResultListSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.savedSpeechResults = ListBuilder<SpeechResult>(action.speechResultList);
  });
}

SpeechResultState _saveSpeechResultSuccessful(SpeechResultState state, SaveSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.savedSpeechResults = ListBuilder<SpeechResult>(action.speechResultList);
  });
}

SpeechResultState _removeSpeechResultSuccessful(SpeechResultState state, RemoveSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.savedSpeechResults = ListBuilder<SpeechResult>(action.speechResultList);
  });
}

SpeechResultState _updateSpeechResult(SpeechResultState state, UpdateSpeechResult action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    if (action.speechName != null) {
      b.speechResult.speechName = action.speechName;
    } else {
      b.speechResult = SpeechResult().toBuilder();
    }
  });
}
