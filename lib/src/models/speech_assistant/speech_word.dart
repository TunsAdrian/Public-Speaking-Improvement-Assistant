part of assistant_models;

abstract class SpeechWord implements Built<SpeechWord, SpeechWordBuilder> {
  factory SpeechWord([void Function(SpeechWordBuilder b) updates]) = _$SpeechWord;

  factory SpeechWord.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  SpeechWord._();

  String get text;

  bool get isFiller;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<SpeechWord> get serializer => _$speechWordSerializer;
}
