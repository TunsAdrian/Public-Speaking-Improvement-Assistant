part of assistant_models;

abstract class SpeechAssistantState implements Built<SpeechAssistantState, SpeechAssistantStateBuilder> {
  factory SpeechAssistantState.initialState() {
    return _$SpeechAssistantState();
  }

  factory SpeechAssistantState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  SpeechAssistantState._();

  @nullable
  SpeechAssistant get speechAssistant;

  @nullable
  bool get hasInternetConnection;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<SpeechAssistantState> get serializer => _$speechAssistantStateSerializer;
}
