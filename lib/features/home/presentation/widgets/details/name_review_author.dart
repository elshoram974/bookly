import 'package:bookly/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

import '../home/bookly_suggestion_books_list_tile/suggestion_books_tile/book_name.dart';
import '../home/bookly_suggestion_books_list_tile/suggestion_books_tile/price_and_review/review_widget.dart';
import '../home/bookly_suggestion_books_list_tile/suggestion_books_tile/writer_widget.dart';

class NameReviewAuthor extends StatelessWidget {
  const NameReviewAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 42,
        bottom: 1.5 * AppConstants.defaultPadding,
      ),
      child: Column(
        children: [
          BookName(fontSize: 30),
          WriterWidget(fontSize: 16),
          ReviewWidget(),
        ],
      ),
    );
  }
}
