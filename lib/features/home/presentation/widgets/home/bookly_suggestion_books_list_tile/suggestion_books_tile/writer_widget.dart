import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class WriterWidget extends StatelessWidget {
  const WriterWidget({
    super.key,
    this.fontSize,
    required this.authors,
    this.maxLines,
  });
  final double? fontSize;
  final int? maxLines;
  final List<String> authors;

  @override
  Widget build(BuildContext context) {
    String names = '';
    for (String author in authors) {
      if (maxLines != null) {
        names += '$author\n';
      } else {
        names += '$author, ';
      }
    }

    if (names.trim() != '') names = names.substring(0, names.length - 2);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Opacity(
        opacity: 0.7,
        child: Text(
          names,
          textAlign: maxLines != null ? TextAlign.center : null,
          maxLines: maxLines ?? 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyle.styleMedium14.copyWith(fontSize: fontSize),
        ),
      ),
    );
  }
}
