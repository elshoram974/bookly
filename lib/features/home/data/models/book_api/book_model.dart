import 'dart:convert';

import '../../../domain/entities/home_entity.dart';
import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends HomeBooksEntity {
  final String? kind;
  final String id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    required this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          idEntity: id,
          bookNameEntity: volumeInfo.title ??'',
          authorEntity: volumeInfo.authors ?? [],
          priceEntity: 0.0,
          ratingCountsEntity: volumeInfo.ratingsCount ?? 0,
          ratingEntity: volumeInfo.averageRating == null
              ? 0.0
              : double.parse('${volumeInfo.averageRating}'),
          photoEntity: volumeInfo.imageLinks?.thumbnail ?? '',
        );

  factory BookModel.fromMap(Map<String, dynamic> data) =>
      BookModel(
        kind: data['kind'] as String?,
        id: data['id'] as String,
        etag: data['etag'] as String?,
        selfLink: data['selfLink'] as String?,
        volumeInfo:
            VolumeInfo.fromMap(data['volumeInfo'] as Map<String, dynamic>),
        saleInfo: data['saleInfo'] == null
            ? null
            : SaleInfo.fromMap(data['saleInfo'] as Map<String, dynamic>),
        accessInfo: data['accessInfo'] == null
            ? null
            : AccessInfo.fromMap(data['accessInfo'] as Map<String, dynamic>),
        searchInfo: data['searchInfo'] == null
            ? null
            : SearchInfo.fromMap(data['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo.toMap(),
        'saleInfo': saleInfo?.toMap(),
        'accessInfo': accessInfo?.toMap(),
        'searchInfo': searchInfo?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BookModel].
  factory BookModel.fromJson(String data) {
    return BookModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BookModel] to a JSON string.
  String toJson() => json.encode(toMap());

  BookModel copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) {
    return BookModel(
      kind: kind ?? this.kind,
      id: id ?? this.id,
      etag: etag ?? this.etag,
      selfLink: selfLink ?? this.selfLink,
      volumeInfo: volumeInfo ?? this.volumeInfo,
      saleInfo: saleInfo ?? this.saleInfo,
      accessInfo: accessInfo ?? this.accessInfo,
      searchInfo: searchInfo ?? this.searchInfo,
    );
  }
}
