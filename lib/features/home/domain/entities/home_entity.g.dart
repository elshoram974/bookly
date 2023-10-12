// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeBooksEntityAdapter extends TypeAdapter<HomeBooksEntity> {
  @override
  final int typeId = 0;

  @override
  HomeBooksEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeBooksEntity(
      idEntity: fields[0] as String,
      bookNameEntity: fields[1] as String,
      authorEntity: (fields[2] as List).cast<String>(),
      priceEntity: fields[3] as double,
      ratingCountsEntity: fields[4] as int,
      ratingEntity: fields[5] as double,
      photoEntity: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HomeBooksEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.idEntity)
      ..writeByte(1)
      ..write(obj.bookNameEntity)
      ..writeByte(2)
      ..write(obj.authorEntity)
      ..writeByte(3)
      ..write(obj.priceEntity)
      ..writeByte(4)
      ..write(obj.ratingCountsEntity)
      ..writeByte(5)
      ..write(obj.ratingEntity)
      ..writeByte(6)
      ..write(obj.photoEntity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeBooksEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
