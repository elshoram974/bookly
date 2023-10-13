part of 'fetch_featured_books_cubit.dart';

sealed class FetchFeaturedBooksState extends Equatable {
  const FetchFeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksLoadingPagination extends FetchFeaturedBooksState {
  final List<HomeBooksEntity> downloadedBooks;
  const FetchFeaturedBooksLoadingPagination(this.downloadedBooks);
}

final class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<HomeBooksEntity> books;
  const FetchFeaturedBooksSuccess(this.books);
}

final class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String errMessage;
  const FetchFeaturedBooksFailure(this.errMessage);
}
final class FetchFeaturedBooksFailurePagination extends FetchFeaturedBooksState {
  final String errMessage;
  const FetchFeaturedBooksFailurePagination(this.errMessage);
}
