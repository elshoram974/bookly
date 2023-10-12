import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class WriterWidget extends StatelessWidget {
  const WriterWidget({super.key, this.fontSize});
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Opacity(
        opacity: 0.7,
        child: Text(
          "Rudyard Kipling",
          style: AppStyle.styleMedium14.copyWith(fontSize: fontSize),
        ),
      ),
    );
  }
}
