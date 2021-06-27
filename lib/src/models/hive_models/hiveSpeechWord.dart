import 'package:hive/hive.dart';

part 'hiveSpeechWord.g.dart';

@HiveType(typeId: 3)
class HiveSpeechWord extends HiveObject {
  HiveSpeechWord(this.text, this.isFiller);

  @HiveField(0)
  String text;

  @HiveField(1)
  bool isFiller;
}
