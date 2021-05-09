import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

Reducer<FillerWordsState> fillerWordsReducer = combineReducers(<Reducer<FillerWordsState>>[
  TypedReducer<FillerWordsState, GetFillerWordsSuccessful>(_getFillerWordsSuccessful),
  TypedReducer<FillerWordsState, AddFillerWordSuccessful>(_addFillerWordSuccessful),
  TypedReducer<FillerWordsState, RemoveFillerWordSuccessful>(_removeFillerWordSuccessful),
]);

FillerWordsState _getFillerWordsSuccessful(FillerWordsState state, GetFillerWordsSuccessful action) {
  return state.rebuild((FillerWordsStateBuilder b) {
    b.fillerWords = ListBuilder<String>(action.fillerWords);
  });
}

FillerWordsState _addFillerWordSuccessful(FillerWordsState state, AddFillerWordSuccessful action) {
  return state.rebuild((FillerWordsStateBuilder b) {
    b.fillerWords = ListBuilder<String>(action.fillerWords);
  });
}

FillerWordsState _removeFillerWordSuccessful(FillerWordsState state, RemoveFillerWordSuccessful action) {
  return state.rebuild((FillerWordsStateBuilder b) {
    b.fillerWords = ListBuilder<String>(action.fillerWords);
  });
}

