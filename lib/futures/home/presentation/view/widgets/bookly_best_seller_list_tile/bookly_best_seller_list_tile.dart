import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_best_seller_list_tile/bookly_best_seller_tile.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_item/bookly_item_in_list.dart';
import 'package:flutter/material.dart';

class BooklyBestSellerListTile extends StatelessWidget {
  const BooklyBestSellerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(
        vertical: 0.3 * AppConstants.defaultPadding,
      ),
      child: const Row(
        children: [
          BooklyItemInList(showPlayIcon: false),
          SizedBox(width: 2 * AppConstants.defaultPadding),
          Expanded(child: BooklyBestSellerTile())
        ],
      ),
    );
  }
}
