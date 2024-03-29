import 'package:bookly/core/errors/status.dart';
import 'package:bookly/core/usecase/usecase_no_parameter.dart';

import '../entities/home_entity.dart';
import '../repositories/home_repositories.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<HomeBooksEntity>,int> {
  final HomeRepositories homeRepositories;

  FetchFeaturedBooksUseCase(this.homeRepositories);

  @override
  Future<({Status status, List<HomeBooksEntity> data})> call(int param) async {
    return await homeRepositories.fetchFeaturedBooks(param);
  }
}
