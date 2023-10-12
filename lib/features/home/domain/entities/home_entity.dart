import 'package:equatable/equatable.dart';

class BookHomeEntity extends Equatable {
  final int idEntity;
  final String bookNameEntity;
  final String authorEntity;
  final double priceEntity;
  final int noOfReviewEntity;
  final double reviewEntity;
  final String photoEntity;

  const BookHomeEntity({
    required this.idEntity,
    required this.bookNameEntity,
    required this.authorEntity,
    required this.priceEntity,
    required this.noOfReviewEntity,
    required this.reviewEntity,
    required this.photoEntity,
  });

  @override
  List<Object?> get props => [
        idEntity,
        bookNameEntity,
        authorEntity,
        priceEntity,
        noOfReviewEntity,
        reviewEntity,
        photoEntity,
      ];
}
