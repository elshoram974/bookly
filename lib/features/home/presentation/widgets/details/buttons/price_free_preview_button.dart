import 'package:flutter/material.dart';

import 'custom_button.dart';

class PriceAndFreePreviewButtons extends StatelessWidget {
  const PriceAndFreePreviewButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtons(onPressed: () {}),
        CustomButtons(
          onPressed: () {},
          color: const Color(0xffEF8262),
        ),
      ],
    );
  }
}