import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import 'can_like_list.dart';
import 'can_like_text.dart';

class CanLike extends StatelessWidget {
  const CanLike({super.key, required this.book});
  final HomeBooksEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CanLikeText(),
        CanLikeList(book:book),
      ],
    );
  }
}
