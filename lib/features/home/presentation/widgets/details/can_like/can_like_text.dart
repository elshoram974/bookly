import 'package:bookly/core/utils/app_constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class CanLikeText extends StatelessWidget {
  const CanLikeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 2.5 * AppConstants.defaultPadding,
        bottom: 0.75 * AppConstants.defaultPadding,
      ),
      child: Opacity(
        opacity: 0.7,
        child: Text(
          S.of(context).YouCanAlsoLike,
          style: AppStyle.styleMedium14,
        ),
      ),
    );
  }
}
