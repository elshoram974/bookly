import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import 'price_widget.dart';
import 'review_widget.dart';

class PriceAndReview extends StatelessWidget {
  const PriceAndReview({super.key, required this.book});
  final HomeBooksEntity book;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        PriceWidget(fontSize: 20,price: book.priceEntity),
        const Spacer(),
        ReviewWidget(book:book),
      ],
    );
  }
}
