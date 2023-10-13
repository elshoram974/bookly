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
        } else if (state is FetchFeaturedBooksSuccess) {
          final List<HomeBooksEntity> books = [];
          books.addAll(state.books);
          if (book != null) {
            for (HomeBooksEntity e in state.books) {
              if (e == book) {
                books.remove(e);
                break;
              }
            }
          }
          return BooklyHorizontalList(books: books);
        }
        return const Text('Error loading books');
      },
    );
  }
}
