part of assistant_models;

abstract class SpeechAssistant implements Built<SpeechAssistant, SpeechAssistantBuilder> {
  factory SpeechAssistant([void Function(SpeechAssistantBuilder b) updates]) = _$SpeechAssistant;

  factory SpeechAssistant.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  SpeechAssistant._();

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<SpeechAssistant> get serializer => _$speechAssistantSerializer;
}
