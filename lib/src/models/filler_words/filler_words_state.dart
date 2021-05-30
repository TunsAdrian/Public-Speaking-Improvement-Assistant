part of filler_words_models;

abstract class FillerWordsState implements Built<FillerWordsState, FillerWordsStateBuilder> {
  factory FillerWordsState.initialState() {
    return _$FillerWordsState();
  }

  factory FillerWordsState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  FillerWordsState._();

  BuiltList<String> get fillerWords;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<FillerWordsState> get serializer => _$fillerWordsStateSerializer;
}
