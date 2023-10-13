import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({super.key, this.fontSize, required this.name, this.maxLines});
  final double? fontSize;
  final int? maxLines;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppStyle.styleRegular20.copyWith(fontSize: fontSize),
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
