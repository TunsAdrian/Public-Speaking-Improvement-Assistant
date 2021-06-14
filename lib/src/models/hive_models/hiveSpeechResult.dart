import 'package:hive/hive.dart';

part 'hiveSpeechResult.g.dart';

@HiveType(typeId: 1)
class HiveSpeechResult extends HiveObject {
  HiveSpeechResult(this.speechDuration, this.speechClarity, this.speechWords, this.speechFillerWords, this.speechName,
      this.uuid, this.wordsPerMinute);

  @HiveField(0)
  int speechDuration;

  @HiveField(1)
  double speechClarity;

  @HiveField(2)
  List<String> speechWords;

  @HiveField(3)
  List<String> speechFillerWords;

  @HiveField(4)
  String speechName;

  @HiveField(5)
  String uuid;

  @HiveField(6)
  double wordsPerMinute;
}
