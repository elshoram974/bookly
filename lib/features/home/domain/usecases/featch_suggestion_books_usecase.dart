import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/usecase/usecase_no_parameter.dart';
import 'package:bookly/features/home/domain/repositories/home_repositories.dart';

import '../entities/home_entity.dart';

class FetchSuggestionBooksUseCase extends UseCase<List<HomeBooksEntity>> {
  final HomeRepositories homeRepositories;

  FetchSuggestionBooksUseCase(this.homeRepositories);

  @override
  Future<(Failure error, List<HomeBooksEntity> books)> call() async {
    return await homeRepositories.fetchSuggestionBooks();
  }
}
