// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveLanguagePair.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveLanguagePairAdapter extends TypeAdapter<HiveLanguagePair> {
  @override
  final int typeId = 2;

  @override
  HiveLanguagePair read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveLanguagePair(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveLanguagePair obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.languageName)
      ..writeByte(1)
      ..write(obj.languageCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveLanguagePairAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
