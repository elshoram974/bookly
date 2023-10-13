import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import '../home/bookly_suggestion_books_list_tile/suggestion_books_tile/book_name.dart';
import '../home/bookly_suggestion_books_list_tile/suggestion_books_tile/price_and_review/review_widget.dart';
import '../home/bookly_suggestion_books_list_tile/suggestion_books_tile/writer_widget.dart';

class NameReviewAuthor extends StatelessWidget {
  const NameReviewAuthor({super.key, required this.book});
  final HomeBooksEntity book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 42,
        bottom: 1.5 * AppConstants.defaultPadding,
      ),
      child: Column(
        children: [
          BookName(name: book.bookNameEntity, fontSize: 30, maxLines: 5),
          WriterWidget(fontSize: 16, authors: book.authorEntity,maxLines: 3),
          ReviewWidget(book: book),
        ],
      ),
    );
  }
}
