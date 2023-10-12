import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
  });
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppStyle.styleBold15.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
        children: const [
          TextSpan(text: "19.99"),
          TextSpan(text: " €", style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
