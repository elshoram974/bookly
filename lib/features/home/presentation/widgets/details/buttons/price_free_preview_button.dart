import 'package:flutter/material.dart';

import 'custom_button.dart';

class PriceAndFreePreviewButtons extends StatelessWidget {
  const PriceAndFreePreviewButtons({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtons(onPressed: () {}, price: price),
        CustomButtons(
          onPressed: () {},
          price: price,
          color: const Color(0xffEF8262),
        ),
      ],
    );
  }
}
