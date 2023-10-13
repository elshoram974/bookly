part of 'fetch_suggested_books_cubit.dart';

sealed class FetchSuggestedBooksState extends Equatable {
    final List<HomeBooksEntity> books;

  const FetchSuggestedBooksState(this.books);

  @override
  List<Object> get props => [];
}

final class FetchSuggestedBooksInitial extends FetchSuggestedBooksState {
  FetchSuggestedBooksInitial():super([]);
}

final class FetchSuggestedBooksLoading extends FetchSuggestedBooksState {
  FetchSuggestedBooksLoading():super([]);
}

final class FetchSuggestedBooksLoadingPagination extends FetchSuggestedBooksState {
  const FetchSuggestedBooksLoadingPagination(super.books);
}

final class FetchSuggestedBooksSuccess extends FetchSuggestedBooksState {
  const FetchSuggestedBooksSuccess(super.books);
}

final class FetchSuggestedBooksFailure extends FetchSuggestedBooksState {
  final String errMessage;
  FetchSuggestedBooksFailure(this.errMessage):super([]);
}
final class FetchSuggestedBooksFailurePagination extends FetchSuggestedBooksState {
  final String errMessage;

  const FetchSuggestedBooksFailurePagination(this.errMessage, super.books);
}
