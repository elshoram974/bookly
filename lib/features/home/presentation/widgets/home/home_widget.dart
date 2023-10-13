import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'feature_books_bloc_builder.dart';
import 'suggested_books_bloc_builder.dart';
import 'suggestion_books_widget.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 1.4 * AppConstants.defaultPadding,
        ),
        children: const [
          FeatureBooksBlocBuilder(),
          SizedBox(height: 2.45 * AppConstants.defaultPadding),
          SuggestionBooksWidget(),
          SuggestedBooksBlocBuilder(),
        ],
      ),
    );
  }
}