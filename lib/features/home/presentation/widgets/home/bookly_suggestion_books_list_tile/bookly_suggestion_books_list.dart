import 'package:bookly/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

import 'suggestion_books_tile/bookly_suggestion_books_list_tile.dart';

class BooklySuggestionBooksList extends StatelessWidget {
  const BooklySuggestionBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1.5 * AppConstants.defaultPadding,
        vertical: AppConstants.defaultPadding,
      ),
      child: Column(
        children: List.generate(
          20,
          (index) => const BooklySuggestionBooksListTile(),
        ),
      ),
    );
  }
}
