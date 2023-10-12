import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/usecase/usecase_no_parameter.dart';

import '../entities/home_entity.dart';
import '../repositories/home_repositories.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<HomeBooksEntity>> {
  final HomeRepositories homeRepositories;

  FetchFeaturedBooksUseCase(this.homeRepositories);

  @override
  Future<(Failure error, List<HomeBooksEntity> books)> call() async {
    return await homeRepositories.fetchFeaturedBooks();
  }
}
