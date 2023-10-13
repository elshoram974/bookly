import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/localization/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../home/bookly_suggestion_books_list_tile/suggestion_books_tile/price_and_review/price_widget.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({
    super.key,
    this.onPressed,
    this.color, required this.price,
  });
  final void Function()? onPressed;
  final Color? color;
  final double price;

  @override
  Widget build(BuildContext context) {
    const double r = AppConstants.defaultRadius;
    return MaterialButton(
      onPressed: onPressed,
      height: 48,
      minWidth: 150,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: color == null ? const Radius.circular(r) : Radius.zero,
          right: color != null ? const Radius.circular(r) : Radius.zero,
        ),
      ),
      color: color ?? Colors.white,
      colorBrightness: color == null ? Brightness.light : Brightness.dark,
      child: color == null
          ?  PriceWidget(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              price: price,
            )
          : Text(S.of(context).FreePreview, style: AppStyle.styleMedium14),
    );
  }
}
