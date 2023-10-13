import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import '../../home/feature_books_bloc_builder.dart';


class CanLikeList extends StatelessWidget {
  const CanLikeList({super.key, required this.book});
  final HomeBooksEntity book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: FeatureBooksBlocBuilder(book: book),
    );
  }
}
