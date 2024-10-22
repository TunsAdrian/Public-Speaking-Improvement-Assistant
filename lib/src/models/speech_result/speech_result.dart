part of speech_models;

abstract class SpeechResult implements Built<SpeechResult, SpeechResultBuilder> {
  factory SpeechResult([void Function(SpeechResultBuilder b) updates]) = _$SpeechResult;

  factory SpeechResult.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  SpeechResult._();

  String get uuid;

  @nullable
  String get speechName;

  Duration get speechDuration;

  double get speechConfidence;

  double get wordsPerMinute;

  BuiltList<SpeechWord> get speechWords;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<SpeechResult> get serializer => _$speechResultSerializer;
}
