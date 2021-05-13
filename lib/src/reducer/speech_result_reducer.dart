import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<SpeechResultState> speechResultReducer = combineReducers(<Reducer<SpeechResultState>>[
  TypedReducer<SpeechResultState, CreateSpeechResultSuccessful>(_createSpeechResultSuccessful),
]);

SpeechResultState _createSpeechResultSuccessful(SpeechResultState state, CreateSpeechResultSuccessful action) {
  return state.rebuild((SpeechResultStateBuilder b) {
    b.speechResult = action.speechResult.toBuilder();
  });
}
