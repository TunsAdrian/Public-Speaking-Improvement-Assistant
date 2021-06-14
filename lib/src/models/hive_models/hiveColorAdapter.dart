import 'package:flutter/painting.dart';
import 'package:hive/hive.dart';

class HiveColorAdapter extends TypeAdapter<Color> {
  @override
  int get typeId => 200;

  @override
  Color read(BinaryReader reader) {
    final int colorValue = reader.readInt();
    return Color(colorValue);
  }

  @override
  void write(BinaryWriter writer, Color obj) {
    writer.writeInt(obj.value);
  }
}
