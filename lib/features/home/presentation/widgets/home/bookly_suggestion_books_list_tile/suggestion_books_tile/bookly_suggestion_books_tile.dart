import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import 'book_name.dart';
import 'price_and_review/price_and_review.dart';
import 'writer_widget.dart';

class BooklySuggestionBooksTile extends StatelessWidget {
  const BooklySuggestionBooksTile({super.key, required this.book});
  final HomeBooksEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookName(name: book.bookNameEntity),
        WriterWidget(authors: book.authorEntity),
        PriceAndReview(book:book),
      ],
    );
  }
}
