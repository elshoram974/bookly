import 'package:flutter/material.dart';

import 'book_name.dart';
import 'price_and_review/price_and_review.dart';
import 'writer_widget.dart';

class BooklySuggestionBooksTile extends StatelessWidget {
  const BooklySuggestionBooksTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [BookName(), WriterWidget(), PriceAndReview()],
    );
  }
}