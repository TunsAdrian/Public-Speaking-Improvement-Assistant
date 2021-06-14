import 'package:hive/hive.dart';

part 'hiveLanguagePair.g.dart';

@HiveType(typeId: 2)
class HiveLanguagePair extends HiveObject {
  HiveLanguagePair(this.languageName, this.languageCode);

  @HiveField(0)
  String languageName;

  @HiveField(1)
  String languageCode;

  @override
  String toString() => languageName;

  @override
// ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveLanguagePair &&
          runtimeType == other.runtimeType &&
          languageName == other.languageName &&
          languageCode == other.languageCode;

  @override
// ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => languageName.hashCode ^ languageCode.hashCode;
}
