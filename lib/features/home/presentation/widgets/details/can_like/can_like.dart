import 'package:flutter/material.dart';

import 'can_like_list.dart';
import 'can_like_text.dart';

class CanLike extends StatelessWidget {
  const CanLike({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CanLikeText(),
        CanLikeList(),
      ],
    );
  }
}