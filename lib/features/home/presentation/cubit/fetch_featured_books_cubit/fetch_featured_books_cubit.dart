import 'package:bookly/core/errors/status.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/fetch_featured_books_usecase.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.useCase) : super(FetchFeaturedBooksInitial()) {
    fetchBooks(0);
  }

  final FetchFeaturedBooksUseCase useCase;

  final List<HomeBooksEntity> books = [];

  Future<void> fetchBooks([int pageNumber = 0]) async {
    _whenPaginationOrNot(
      pageNumber,
      paginationState: FetchFeaturedBooksLoadingPagination(books),
      state: FetchFeaturedBooksLoading(),
    );
    final ({List<HomeBooksEntity> data, Status status}) featuredBooks = await useCase.call(pageNumber);

    Status status = featuredBooks.status;
    if (status is Success) {
      books.addAll(featuredBooks.data);
      emit(FetchFeaturedBooksSuccess(books));
    } else if (status is Failure) {
      _whenPaginationOrNot(
        pageNumber,
        paginationState: FetchFeaturedBooksFailurePagination(status.error),
        state: FetchFeaturedBooksFailure(status.error),
      );
    }
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
