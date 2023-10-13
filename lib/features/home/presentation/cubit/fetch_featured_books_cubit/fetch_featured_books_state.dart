part of 'fetch_featured_books_cubit.dart';

sealed class FetchFeaturedBooksState extends Equatable {
    final List<HomeBooksEntity> books;

  const FetchFeaturedBooksState(this.books);

  @override
  List<Object> get props => [];
}

final class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {
  FetchFeaturedBooksInitial():super([]);
}

final class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {
  FetchFeaturedBooksLoading():super([]);
}

final class FetchFeaturedBooksLoadingPagination extends FetchFeaturedBooksState {
  const FetchFeaturedBooksLoadingPagination(super.books);
}

final class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  const FetchFeaturedBooksSuccess(super.books);
}

final class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String errMessage;
  FetchFeaturedBooksFailure(this.errMessage):super([]);
}
final class FetchFeaturedBooksFailurePagination extends FetchFeaturedBooksState {
  final String errMessage;

  const FetchFeaturedBooksFailurePagination(this.errMessage, super.books);
}
