import 'package:equatable/equatable.dart';

class HomeBooksEntity extends Equatable {
  final String idEntity;
  final String bookNameEntity;
  final List<String> authorEntity;
  final double priceEntity;
  final int ratingCountsEntity;
  final double ratingEntity;
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
