import 'package:hive/hive.dart';

part 'hiveFillerWord.g.dart';

@HiveType(typeId: 4)
class HiveFillerWord extends HiveObject {
  HiveFillerWord(this.uuid, this.text);

  @HiveField(0)
  String uuid;

  @HiveField(1)
  String text;
}
