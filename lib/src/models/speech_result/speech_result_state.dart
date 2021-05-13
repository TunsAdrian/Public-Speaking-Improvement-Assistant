part of speech_models;

abstract class SpeechResultState implements Built<SpeechResultState, SpeechResultStateBuilder> {
  factory SpeechResultState.initialState() {
    return _$SpeechResultState();
  }

  factory SpeechResultState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  SpeechResultState._();

  SpeechResult get speechResult;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<SpeechResultState> get serializer => _$speechResultStateSerializer;
}
