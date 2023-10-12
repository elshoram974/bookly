import 'package:bookly/core/errors/failure.dart';

import '../entities/home_entity.dart';

abstract class HomeRepositories {
  Future<(Failure error, List<HomeBooksEntity> books)> fetchFeaturedBooks();
  Future<(Failure error, List<HomeBooksEntity> books)> fetchSuggestionBooks();
}
