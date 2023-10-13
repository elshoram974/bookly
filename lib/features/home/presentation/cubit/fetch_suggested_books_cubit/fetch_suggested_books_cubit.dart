import 'package:bookly/core/errors/status.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/home_entity.dart';
import '../../../domain/usecases/fetch_suggestion_books_usecase.dart';

part 'fetch_suggested_books_state.dart';

class FetchSuggestedBooksCubit extends Cubit<FetchSuggestedBooksState> {
  FetchSuggestedBooksCubit(this.useCase) : super(FetchSuggestedBooksInitial()) {
    fetchBooks(0);
    _initControllerMethod();
  }

  final FetchSuggestionBooksUseCase useCase;
  final List<HomeBooksEntity> books = [];

  late ScrollController controller;
  int pageNumber = 0;

  Future<void> fetchBooks([int pageNumber = 0]) async {
    _whenPaginationOrNot(
      pageNumber,
      paginationState: FetchSuggestedBooksLoadingPagination(books),
      state: FetchSuggestedBooksLoading(),
    );
    final ({List<HomeBooksEntity> data, Status status}) suggestedBooks =
        await useCase.call(pageNumber);

    Status status = suggestedBooks.status;
    if (status is Success) {
      books.addAll(suggestedBooks.data);
      emit(FetchSuggestedBooksSuccess(books));
    } else if (status is Failure) {
      _whenPaginationOrNot(
        pageNumber,
        paginationState: FetchSuggestedBooksFailurePagination(
          status.error,
          books,
        ),
        state: FetchSuggestedBooksFailure(status.error),
      );
    }
  }

  void _initControllerMethod() {
    controller = ScrollController();
    controller.addListener(
      () {
        if (controller.position.pixels >=
                0.7 * controller.position.maxScrollExtent &&
            state is! FetchSuggestedBooksLoadingPagination) {
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
    required FetchSuggestedBooksState paginationState,
    required FetchSuggestedBooksState state,
  }) {
    if (pageNumber == 0) {
      emit(state);
    } else {
      emit(paginationState);
    }
  }
}
