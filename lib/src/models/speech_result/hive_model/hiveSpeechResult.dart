import 'package:hive/hive.dart';

part 'hiveSpeechResult.g.dart';

@HiveType(typeId: 1)
class HiveSpeechResult extends HiveObject {
  HiveSpeechResult(this.speechDuration, this.speechClarity, this.speechWords, this.speechFillerWords);

  @HiveField(0)
  int speechDuration;

  @HiveField(1)
  double speechClarity;

  @HiveField(2)
  List<String> speechWords;

  @HiveField(3)
  List<String> speechFillerWords;
}
