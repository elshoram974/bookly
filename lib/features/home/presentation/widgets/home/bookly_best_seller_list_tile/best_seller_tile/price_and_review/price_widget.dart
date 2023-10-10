import 'package:bookly/core/constants/styles.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppStyle.styleBold15.copyWith(fontSize: 20),
        children: const [
          TextSpan(text: "19.99"),
          TextSpan(text: " €", style: AppStyle.styleBold15),
        ],
      ),
    );
  }
}
