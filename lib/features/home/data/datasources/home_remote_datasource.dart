import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/core/utils/constants/app_links.dart';
import 'package:bookly/features/home/data/models/book_api/book_model.dart';

import '../../domain/entities/home_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeBooksEntity>> fetchFeaturedBooks();
  Future<List<HomeBooksEntity>> fetchSuggestionBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  @override
  Future<List<HomeBooksEntity>> fetchFeaturedBooks() async {
    Map<String, dynamic> data = await const APIServices().get(AppLinks.featureBooks);

    final List<HomeBooksEntity> books = _getBooksFromMap(data);
    return books;
  }

  @override
  Future<List<HomeBooksEntity>> fetchSuggestionBooks() async {
    Map<String, dynamic> data = await const APIServices().get(AppLinks.suggestionBooks);

    final List<HomeBooksEntity> books = _getBooksFromMap(data);
    return books;  }

  List<HomeBooksEntity> _getBooksFromMap(Map<String, dynamic> data) {
    final List<HomeBooksEntity> books = [];
    for (Map<String, dynamic> bookMap in data['items']) {
      books.add(BookModel.fromMap(bookMap));
    }
    return books;
  }
}
