import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/core/constants/styles.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class SuggestionBooksWidget extends StatelessWidget {
  const SuggestionBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1.5 * AppConstants.defaultPadding,
      ),
      child: Text(
        S.of(context).SuggestionBooks,
        style: AppStyle.styleSemiBold18,
      ),
    );
  }
}
