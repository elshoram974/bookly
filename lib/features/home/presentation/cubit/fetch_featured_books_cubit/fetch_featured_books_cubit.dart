import 'package:bookly/core/errors/status.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/fetch_featured_books_usecase.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.useCase) : super(FetchFeaturedBooksInitial()) {
    fetchBooks(0);
    _initControllerMethod();
  }

  final FetchFeaturedBooksUseCase useCase;
  final List<HomeBooksEntity> books = [];

  late ScrollController controller;
  int pageNumber = 0;

  Future<void> fetchBooks([int pageNumber = 0]) async {
    _whenPaginationOrNot(
      pageNumber,
      paginationState: FetchFeaturedBooksLoadingPagination(books),
      state: FetchFeaturedBooksLoading(),
    );

    final ({List<HomeBooksEntity> data, Status status}) featuredBooks =
        await useCase.call(pageNumber);
    Status status = featuredBooks.status;
    if (status is Success) {
      books.addAll(featuredBooks.data);
      emit(FetchFeaturedBooksSuccess(books));
    } else if (status is Failure) {
      _whenPaginationOrNot(
        pageNumber,
        paginationState:
            FetchFeaturedBooksFailurePagination(status.error, books),
        state: FetchFeaturedBooksFailure(status.error),
      );
    }
  }

  void _initControllerMethod() {
    controller = ScrollController(keepScrollOffset: true);
    controller.addListener(
      () {
        if (controller.position.pixels >= 0.7 * controller.position.maxScrollExtent &&
            state is! FetchFeaturedBooksLoadingPagination) {
          fetchBooks(++pageNumber);
        }
      },
    );
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }

  void _whenPaginationOrNot(
    int pageNumber, {
    required FetchFeaturedBooksState paginationState,
    required FetchFeaturedBooksState state,
  }) {
    if (pageNumber == 0) {
      emit(state);
    } else {
      emit(paginationState);
    }
  }
}
