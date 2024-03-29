import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/core/utils/constants/app_links.dart';
import 'package:bookly/core/utils/constants/app_strings.dart';
import 'package:bookly/core/utils/functions/hive/save_books.dart';
import 'package:bookly/features/home/data/models/book_api/book_model.dart';

import '../../domain/entities/home_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeBooksEntity>> fetchFeaturedBooks(int pageNumber);
  Future<List<HomeBooksEntity>> fetchSuggestionBooks(int pageNumber);
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final APIServices service;

  HomeRemoteDataSourceImp(this.service);

  @override
  Future<List<HomeBooksEntity>> fetchFeaturedBooks(int pageNumber) async {
    Map<String, dynamic> data = await service.get('${AppLinks.featureBooks}&startIndex=${pageNumber * 10}');

    final List<HomeBooksEntity> books = _getBooksFromMap(data);
    saveBooks(books, AppStrings.featureBooks);

    return books;
  }

  @override
  Future<List<HomeBooksEntity>> fetchSuggestionBooks(int pageNumber) async {
    Map<String, dynamic> data = await service.get('${AppLinks.suggestionBooks}&startIndex=${pageNumber * 10}');

    final List<HomeBooksEntity> books = _getBooksFromMap(data);
    saveBooks(books, AppStrings.suggestionBooks);
    
    return books;
  }

  List<HomeBooksEntity> _getBooksFromMap(Map<String, dynamic> data) {
    final List<HomeBooksEntity> books = [];
    for (Map<String, dynamic> bookMap in data['items']) {
      books.add(BookModel.fromMap(bookMap));
    }
    return books;
  }
}
