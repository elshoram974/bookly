import 'package:bookly/core/errors/status.dart';
import 'package:bookly/core/usecase/usecase_no_parameter.dart';
import 'package:bookly/features/home/domain/repositories/home_repositories.dart';

import '../entities/home_entity.dart';

class FetchSuggestionBooksUseCase extends UseCase<List<HomeBooksEntity>,int> {
  final HomeRepositories homeRepositories;

  FetchSuggestionBooksUseCase(this.homeRepositories);

  @override
  Future<({Status status, List<HomeBooksEntity> data})> call(int param) async {
    return await homeRepositories.fetchSuggestionBooks(param);
  }
}
