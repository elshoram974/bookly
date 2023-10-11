import 'package:bookly/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../../bookly_item/book_photo.dart';
import 'bookly_suggestion_books_tile.dart';

class BooklySuggestionBooksListTile extends StatelessWidget {
  const BooklySuggestionBooksListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: const EdgeInsets.symmetric(
        vertical: 0.3 * AppConstants.defaultPadding,
      ),
      child: const Row(
        children: [
          BookPhoto(showPlayIcon: false),
          SizedBox(width: 1.5 * AppConstants.defaultPadding),
          Expanded(child: BooklySuggestionBooksTile())
        ],
      ),
    );
  }
}
