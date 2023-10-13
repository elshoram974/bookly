import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import '../widgets/details/can_like/can_like.dart';
import '../widgets/details/custom_details_app_bar.dart';
import '../widgets/details/buttons/price_free_preview_button.dart';
import '../widgets/details/details_book_photo.dart';
import '../widgets/details/name_review_author.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.book});
  final HomeBooksEntity book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomDetailsAppBar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 1.5 * AppConstants.defaultPadding,
              ),
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                DetailsBookPhoto(book: book),
                NameReviewAuthor(book: book),
                PriceAndFreePreviewButtons(price: book.priceEntity),
                CanLike(book: book),
                const SizedBox(height: 2 * AppConstants.defaultPadding)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
