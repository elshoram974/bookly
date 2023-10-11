import 'package:bookly/core/constants/styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "The Jungle Book",
      style: AppStyle.styleRegular20,
      maxLines: 2,
    );
  }
}
