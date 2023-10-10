import 'package:bookly/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'best_seller_widget.dart';
import 'bookly_best_seller_list_tile/bookly_best_seller_list.dart';
import 'bookly_horizontal_list.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 1.4 * AppConstants.defaultPadding,
        ),
        children: const [
          BooklyHorizontalList(),
          SizedBox(height: 2.45 * AppConstants.defaultPadding),
          BestSellerWidget(),
          BooklyBestSellerList(),
        ],
      ),
    );
  }
}
