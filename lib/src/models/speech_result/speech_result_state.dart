part of speech_models;

abstract class SpeechResultState implements Built<SpeechResultState, SpeechResultStateBuilder> {
  factory SpeechResultState.initialState() {
    return _$SpeechResultState();
  }

  factory SpeechResultState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  SpeechResultState._();

  @nullable
  SpeechResult get speechResult;

  BuiltList<SpeechResult> get savedSpeechResults;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<SpeechResultState> get serializer => _$speechResultStateSerializer;
}
