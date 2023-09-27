import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/futures/home/presentation/view/widgets/best_seller_widget.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_best_seller_list_tile/bookly_best_seller_list_tile.dart';
import 'package:bookly/futures/home/presentation/view/widgets/bookly_horizontal_list.dart';
import 'package:bookly/futures/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(),
          Expanded(child: HomeList()),
        ],
      ),
    );
  }
}

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}

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
