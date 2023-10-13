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
    return box.values.toList();
  }

  @override
  List<HomeBooksEntity> fetchSuggestionBooks(int pageNumber) {
    Box<HomeBooksEntity> box = Hive.box<HomeBooksEntity>(AppStrings.suggestionBooks);
    return box.values.toList();  }
}
