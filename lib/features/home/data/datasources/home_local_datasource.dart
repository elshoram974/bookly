import '../../domain/entities/home_entity.dart';

abstract class HomeLocalDataSource {
  List<HomeBooksEntity> fetchFeaturedBooks();
  List<HomeBooksEntity> fetchSuggestionBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<HomeBooksEntity> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  List<HomeBooksEntity> fetchSuggestionBooks() {
    throw UnimplementedError();
  }
}
