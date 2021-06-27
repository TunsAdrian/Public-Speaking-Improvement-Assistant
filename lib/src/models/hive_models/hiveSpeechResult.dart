import 'package:hive/hive.dart';
import 'hiveSpeechWord.dart';

part 'hiveSpeechResult.g.dart';

@HiveType(typeId: 1)
class HiveSpeechResult extends HiveObject {
  HiveSpeechResult(
      this.speechDuration, this.speechClarity, this.speechWords, this.speechName, this.uuid, this.wordsPerMinute);

  @HiveField(0)
  int speechDuration;

  @HiveField(1)
  double speechClarity;

  @HiveField(2)
  List<HiveSpeechWord> speechWords;

  @HiveField(3)
  String speechName;

  @HiveField(4)
  String uuid;

  @HiveField(5)
  double wordsPerMinute;
}
