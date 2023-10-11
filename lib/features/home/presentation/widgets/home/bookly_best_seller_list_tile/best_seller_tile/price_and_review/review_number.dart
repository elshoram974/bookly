import 'package:bookly/core/constants/styles.dart';
import 'package:flutter/material.dart';

class ReviewNumber extends StatelessWidget {
  const ReviewNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return const Opacity(
      opacity: 0.5,
      child: Text(
        "(2390)",
        style: AppStyle.styleMedium14,
      ),
    );
  }
}
