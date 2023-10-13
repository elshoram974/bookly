part of 'fetch_suggested_books_cubit.dart';

sealed class FetchSuggestedBooksState extends Equatable {
  const FetchSuggestedBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSuggestedBooksInitial extends FetchSuggestedBooksState {}

final class FetchSuggestedBooksLoading extends FetchSuggestedBooksState {}

final class FetchSuggestedBooksLoadingPagination
    extends FetchSuggestedBooksState {
  final List<HomeBooksEntity> downloadedBooks;
  const FetchSuggestedBooksLoadingPagination(this.downloadedBooks);
}

final class FetchSuggestedBooksSuccess extends FetchSuggestedBooksState {
  final List<HomeBooksEntity> books;
  const FetchSuggestedBooksSuccess(this.books);
}

final class FetchSuggestedBooksFailure extends FetchSuggestedBooksState {
  final String errMessage;
  const FetchSuggestedBooksFailure(this.errMessage);
}

final class FetchSuggestedBooksFailurePagination
    extends FetchSuggestedBooksState {
  final String errMessage;
  const FetchSuggestedBooksFailurePagination(this.errMessage);
}
