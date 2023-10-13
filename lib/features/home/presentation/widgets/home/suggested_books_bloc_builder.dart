import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/fetch_suggested_books_cubit/fetch_suggested_books_cubit.dart';
import 'bookly_suggestion_books_list_tile/bookly_suggestion_books_list.dart';

class SuggestedBooksBlocBuilder extends StatelessWidget {
  const SuggestedBooksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSuggestedBooksCubit, FetchSuggestedBooksState>(
      builder: (context, state) {
        if (state is FetchSuggestedBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FetchSuggestedBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is FetchSuggestedBooksSuccess ||state is FetchSuggestedBooksFailurePagination) {
          return BooklySuggestionBooksList(books: state.books);
        }else if (state is FetchSuggestedBooksLoadingPagination) {
          return BooklySuggestionBooksList(books: state.books, isLoading: true);
        }
        return const Text('Error loading books');
      },
    );
  }
}
