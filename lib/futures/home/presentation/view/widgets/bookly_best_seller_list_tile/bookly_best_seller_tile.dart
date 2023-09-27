import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_best_seller_list_tile/price_and_review.dart';
import 'package:flutter/material.dart';

class BooklyBestSellerTile extends StatelessWidget {
  const BooklyBestSellerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("The Jungle Book", style: TextStyle(fontSize: 20)),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0.7 * AppConstants.defaultPadding,
          ),
          child: Text(
            "Rudyard Kipling",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        PriceAndReview()
      ],
    );
  }
}
