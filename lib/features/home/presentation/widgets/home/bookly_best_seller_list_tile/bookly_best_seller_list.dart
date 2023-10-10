import 'package:bookly/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'best_seller_tile/bookly_best_seller_list_tile.dart';

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