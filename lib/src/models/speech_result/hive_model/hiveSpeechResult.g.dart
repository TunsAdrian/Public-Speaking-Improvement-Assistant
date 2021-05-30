// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveSpeechResult.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveSpeechResultAdapter extends TypeAdapter<HiveSpeechResult> {
  @override
  final int typeId = 1;

  @override
  HiveSpeechResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveSpeechResult(
      fields[0] as int,
      fields[1] as double,
      (fields[2] as List)?.cast<String>(),
      (fields[3] as List)?.cast<String>(),
      fields[4] as String,
      fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveSpeechResult obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.speechDuration)
      ..writeByte(1)
      ..write(obj.speechClarity)
      ..writeByte(2)
      ..write(obj.speechWords)
      ..writeByte(3)
      ..write(obj.speechFillerWords)
      ..writeByte(4)
      ..write(obj.speechName)
      ..writeByte(5)
      ..write(obj.uuid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveSpeechResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
