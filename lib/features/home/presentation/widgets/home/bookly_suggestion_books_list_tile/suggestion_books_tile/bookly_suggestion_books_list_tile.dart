import 'package:bookly/core/utils/app_constants.dart';
import 'package:bookly/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../bookly_item/book_photo.dart';
import 'bookly_suggestion_books_tile.dart';

class BooklySuggestionBooksListTile extends StatelessWidget {
  const BooklySuggestionBooksListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoute.detailsScreen),
      child: Container(
        height: 115,
        color: Colors.transparent,
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
      ),
    );
  }
}
