import 'package:bookly/core/errors/failure.dart';

import '../entities/home_entity.dart';

abstract class HomeRepositories {
  Future<(Failure error, List<BookHomeEntity> books)> fetchFeatureBooks();
  Future<(Failure error, List<BookHomeEntity> books)> fetchSuggestionBooks();
}
