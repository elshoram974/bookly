import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import 'suggestion_books_tile/bookly_suggestion_books_list_tile.dart';

class BooklySuggestionBooksList extends StatelessWidget {
  const BooklySuggestionBooksList({super.key, required this.books, this.isLoading = false});
  final List<HomeBooksEntity> books;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1.5 * AppConstants.defaultPadding,
        vertical: AppConstants.defaultPadding,
      ),
      child: Column(
        children: [
          ...List.generate(
            books.length,
            (index) {
              HomeBooksEntity book = books[index];
              return BooklySuggestionBooksListTile(book: book);
            },
          ),
          if (isLoading)
            Container(
              width: 100,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
