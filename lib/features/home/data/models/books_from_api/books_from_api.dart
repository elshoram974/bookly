import 'book_model.dart';

class BooksFromApi {
  String? kind;
  int? totalItems;
  List<BookModel>? items;

  BooksFromApi({this.kind, this.totalItems, this.items});

  factory BooksFromApi.fromJson(Map<String, dynamic> json) => BooksFromApi(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => BookModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };

  BooksFromApi copyWith({
    String? kind,
    int? totalItems,
    List<BookModel>? items,
  }) {
    return BooksFromApi(
      kind: kind ?? this.kind,
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
    );
  }
}
