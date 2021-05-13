part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..auth = AuthState.initialState().toBuilder()
        ..fillerWords = FillerWordsState.initialState().toBuilder()
        ..speechResult = SpeechResultState.initialState().toBuilder();
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AppState._();

  AuthState get auth;

  FillerWordsState get fillerWords;

  SpeechResultState get speechResult;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
