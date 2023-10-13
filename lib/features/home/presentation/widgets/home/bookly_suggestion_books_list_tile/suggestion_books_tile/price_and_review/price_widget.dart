import 'package:bookly/core/utils/localization/generated/l10n.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    required this.price,
  });
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double price;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppStyle.styleBold15.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
        children: [
          TextSpan(
              text: price != 0 ? price.toStringAsFixed(2) : S.of(context).free),
          if (price != 0)
            const TextSpan(text: " €", style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
