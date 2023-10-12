import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'home_entity.g.dart';

@HiveType(typeId: 0)
class HomeBooksEntity extends Equatable {
  @HiveField(0)
  final String idEntity;
  @HiveField(1)
  final String bookNameEntity;
  @HiveField(2)
  final List<String> authorEntity;
  @HiveField(3)
  final double priceEntity;
  @HiveField(4)
  final int ratingCountsEntity;
  @HiveField(5)
  final double ratingEntity;
  @HiveField(6)
  final String photoEntity;

  const HomeBooksEntity({
    required this.idEntity,
    required this.bookNameEntity,
    required this.authorEntity,
    required this.priceEntity,
    required this.ratingCountsEntity,
    required this.ratingEntity,
    required this.photoEntity,
  });

  @override
  List<Object?> get props => [
        idEntity,
        bookNameEntity,
        authorEntity,
        priceEntity,
        ratingCountsEntity,
        ratingEntity,
        photoEntity,
      ];
}
