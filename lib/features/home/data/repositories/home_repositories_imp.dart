import 'package:bookly/core/errors/status.dart';
import 'package:bookly/features/home/data/datasources/home_remote_datasource.dart';

import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:dio/dio.dart';

import '../../domain/repositories/home_repositories.dart';
import '../datasources/home_local_datasource.dart';

class HomeRepositoriesImp extends HomeRepositories {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoriesImp({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<
      ({
        Status status,
        List<HomeBooksEntity> data,
      })> fetchFeaturedBooks() async {
    List<HomeBooksEntity> books = localDataSource.fetchFeaturedBooks();
    try {
      if (books.isNotEmpty) return (status: Success(), data: books);
      books = await remoteDataSource.fetchFeaturedBooks();
      return (status: Success(), data: books);
    } catch (e) {
      if (e is DioException) {
        return (status: ServerFailure.fromDioException(e), data: books);
      }
      return (status: Failure(e.toString()), data: books);
    }
  }

  @override
  Future<
      ({
        Status status,
        List<HomeBooksEntity> data,
      })> fetchSuggestionBooks() async {
    List<HomeBooksEntity> books = localDataSource.fetchSuggestionBooks();
    try {
      if (books.isNotEmpty) return (status: Success(), data: books);
      books = await remoteDataSource.fetchSuggestionBooks();
      return (status: Success(), data: books);
    } catch (e) {
      return (status: Failure(e.toString()), data: books);
    }
  }
}
