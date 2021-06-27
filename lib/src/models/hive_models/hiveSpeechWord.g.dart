// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveSpeechWord.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveSpeechWordAdapter extends TypeAdapter<HiveSpeechWord> {
  @override
  final int typeId = 3;

  @override
  HiveSpeechWord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveSpeechWord(
      fields[0] as String,
      fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HiveSpeechWord obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.isFiller);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveSpeechWordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
