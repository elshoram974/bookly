import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ReviewNumber extends StatelessWidget {
  const ReviewNumber({super.key, required this.no});
  final int no;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Text(
        "($no)",
        style: AppStyle.styleMedium14,
      ),
    );
  }
}
