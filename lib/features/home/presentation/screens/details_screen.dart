import 'package:bookly/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

import '../widgets/details/can_like/can_like.dart';
import '../widgets/details/custom_details_app_bar.dart';
import '../widgets/details/buttons/price_free_preview_button.dart';
import '../widgets/details/details_book_photo.dart';
import '../widgets/details/name_review_author.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomDetailsAppBar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 1.5 * AppConstants.defaultPadding,
              ),
              physics: const BouncingScrollPhysics(),
              children: const <Widget>[
                DetailsBookPhoto(),
                NameReviewAuthor(),
                PriceAndFreePreviewButtons(),
                CanLike(),
                SizedBox(height: 2 * AppConstants.defaultPadding)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
