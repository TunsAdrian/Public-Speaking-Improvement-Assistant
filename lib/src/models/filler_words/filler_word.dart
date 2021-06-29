part of filler_words_models;

abstract class FillerWord implements Built<FillerWord, FillerWordBuilder> {
  factory FillerWord([void Function(FillerWordBuilder b) updates]) = _$FillerWord;

  factory FillerWord.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  FillerWord._();

  String get uuid;

  String get text;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<FillerWord> get serializer => _$fillerWordSerializer;
}
