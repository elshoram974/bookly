import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/cubit/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/cubit/fetch_suggested_books_cubit/fetch_suggested_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'suggestion_books_widget.dart';
import 'bookly_suggestion_books_list_tile/bookly_suggestion_books_list.dart';
import 'bookly_horizontal_list.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 1.4 * AppConstants.defaultPadding,
        ),
        children: const [
          FeatureBooksBlocBuilder(),
          SizedBox(height: 2.45 * AppConstants.defaultPadding),
          SuggestionBooksWidget(),
          SuggestedBooksBlocBuilder(),
        ],
      ),
    );
  }
}

class SuggestedBooksBlocBuilder extends StatelessWidget {
  const SuggestedBooksBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSuggestedBooksCubit, FetchSuggestedBooksState>(
      builder: (context, state) {
        if (state is FetchSuggestedBooksSuccess) {
          return BooklySuggestionBooksList(books: state.books);
        }
        return Container();
      },
    );
  }
}

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
        return Text('Error loading books');
      },
    );
  }
}
