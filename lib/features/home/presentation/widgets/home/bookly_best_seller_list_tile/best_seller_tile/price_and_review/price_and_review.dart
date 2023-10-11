import 'package:flutter/material.dart';

import 'price_widget.dart';
import 'review_widget.dart';

class PriceAndReview extends StatelessWidget {
  const PriceAndReview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PriceWidget(),
        Spacer(),
        ReviewWidget(),
      ],
    );
  }
}
