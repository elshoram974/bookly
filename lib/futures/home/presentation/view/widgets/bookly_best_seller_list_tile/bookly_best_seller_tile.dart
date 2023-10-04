import 'package:bookly/futures/home/presentation/view/widgets/bookly_best_seller_list_tile/best_seller_tile/price_and_review/price_and_review.dart';
import 'package:flutter/material.dart';

import 'best_seller_tile/book_name.dart';
import 'best_seller_tile/writer_widget.dart';

class BooklyBestSellerTile extends StatelessWidget {
  const BooklyBestSellerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookName(),
        WriterWidget(),
        PriceAndReview()
      ],
    );
  }
}