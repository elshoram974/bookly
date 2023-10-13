import 'package:bookly/core/errors/status.dart';

import '../entities/home_entity.dart';

abstract class HomeRepositories {
  Future<({Status status, List<HomeBooksEntity> data})> fetchFeaturedBooks(int pageNumber);
  Future<({Status status, List<HomeBooksEntity> data})> fetchSuggestionBooks(int pageNumber);
}
