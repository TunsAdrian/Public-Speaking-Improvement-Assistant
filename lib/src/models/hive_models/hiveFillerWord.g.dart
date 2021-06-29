// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveFillerWord.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveFillerWordAdapter extends TypeAdapter<HiveFillerWord> {
  @override
  final int typeId = 4;

  @override
  HiveFillerWord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveFillerWord(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveFillerWord obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveFillerWordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
