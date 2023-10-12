import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({super.key, this.fontSize});
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      "The Jungle Book",
      style: AppStyle.styleRegular20.copyWith(fontSize: fontSize),
      maxLines: 2,
    );
  }
}
