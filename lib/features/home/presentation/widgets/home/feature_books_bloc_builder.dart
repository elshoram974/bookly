import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/home_entity.dart';
import '../../cubit/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'bookly_horizontal_list.dart';

class FeatureBooksBlocBuilder extends StatelessWidget {
  const FeatureBooksBlocBuilder({super.key, this.book});
  final HomeBooksEntity? book;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if (state is FetchFeaturedBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FetchFeaturedBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is FetchFeaturedBooksSuccess ||state is FetchFeaturedBooksFailurePagination) {
          return BooklyHorizontalList(books: cancelCurrentBook(state.books));
        } else if (state is FetchFeaturedBooksLoadingPagination) {
          return BooklyHorizontalList(books: cancelCurrentBook(state.books), isLoading: true);
        }
        return const Text('Error loading books');
      },
    );
  }

  cancelCurrentBook(List<HomeBooksEntity> stateBooks) {
    final List<HomeBooksEntity> books = [];

    books.addAll(stateBooks);
    if (book != null) {
      for (HomeBooksEntity e in stateBooks) {
        if (e == book) {
          books.remove(e);
          break;
        }
      }
    }
    return books;
  }
}
