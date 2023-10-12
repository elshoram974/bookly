import 'dart:convert';

import 'package:flutter/material.dart';

import 'book_model.dart';

class BookApi {
  String? kind;
  num? totalItems;
  List<BookModel>? items;

  BookApi({this.kind, this.totalItems, this.items});

  factory BookApi.fromMap(Map<String, dynamic> data, BuildContext context) =>
      BookApi(
        kind: data['kind'] as String?,
        totalItems: data['totalItems'] as num?,
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => BookModel.fromMap(e as Map<String, dynamic>, context))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BookApi].
  factory BookApi.fromJson(String data, BuildContext context) {
    return BookApi.fromMap(json.decode(data) as Map<String, dynamic>, context);
  }

  /// `dart:convert`
  ///
  /// Converts [BookApi] to a JSON string.
  String toJson() => json.encode(toMap());

  BookApi copyWith({
    String? kind,
    num? totalItems,
    List<BookModel>? items,
  }) {
    return BookApi(
      kind: kind ?? this.kind,
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
    );
  }
}
