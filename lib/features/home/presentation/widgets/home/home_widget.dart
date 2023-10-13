import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/presentation/cubit/fetch_suggested_books_cubit/fetch_suggested_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature_books_bloc_builder.dart';
import 'suggested_books_bloc_builder.dart';
import 'suggestion_books_widget.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        controller:
            BlocProvider.of<FetchSuggestedBooksCubit>(context).controller,
        physics: const BouncingScrollPhysics(),
        cacheExtent: 5000,
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
