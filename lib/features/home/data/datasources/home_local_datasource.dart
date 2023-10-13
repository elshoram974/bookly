import 'package:bookly/core/utils/constants/app_strings.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/home_entity.dart';

abstract class HomeLocalDataSource {
  List<HomeBooksEntity> fetchFeaturedBooks(int pageNumber);
  List<HomeBooksEntity> fetchSuggestionBooks(int pageNumber);
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<HomeBooksEntity> fetchFeaturedBooks(int pageNumber) {
    Box<HomeBooksEntity> box = Hive.box<HomeBooksEntity>(AppStrings.featureBooks);
    return _getBooksNotHere(box, pageNumber);
  }

  @override
  List<HomeBooksEntity> fetchSuggestionBooks(int pageNumber) {
    Box<HomeBooksEntity> box =Hive.box<HomeBooksEntity>(AppStrings.suggestionBooks);
    return _getBooksNotHere(box, pageNumber);
  }

  List<HomeBooksEntity> _getBooksNotHere(Box<HomeBooksEntity> box, int pageNumber) {
    final List<HomeBooksEntity> localBox = [];
    localBox.addAll(box.values);
    int start = pageNumber;
    int end = start + 10;

    if (start >= localBox.length || end > localBox.length) return [];

    return localBox.sublist(start, end);
  }
}
