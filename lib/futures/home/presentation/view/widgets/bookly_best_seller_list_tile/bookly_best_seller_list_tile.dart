import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_best_seller_list_tile/bookly_best_seller_tile.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_item/book_photo.dart';
import 'package:flutter/material.dart';

class BooklyBestSellerList extends StatelessWidget {
  const BooklyBestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1.5 * AppConstants.defaultPadding,
        vertical: AppConstants.defaultPadding,
      ),
      child: Column(
        children: List.generate(
          20,
          (index) => const BooklyBestSellerListTile(),
        ),
      ),
    );
  }
}

class BooklyBestSellerListTile extends StatelessWidget {
  const BooklyBestSellerListTile({super.key});

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
          Expanded(child: BooklyBestSellerTile())
        ],
      ),
    );
  }
}
