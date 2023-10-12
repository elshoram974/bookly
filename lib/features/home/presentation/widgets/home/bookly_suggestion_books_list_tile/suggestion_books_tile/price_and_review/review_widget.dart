import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/shared/span_widget.dart';
import 'package:flutter/material.dart';

import 'review_number.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppStyle.styleMedium14.copyWith(fontSize: 16),
        children: const [
          MySpanWidget(Icon(Icons.star, color: Colors.amber)),
          WidgetSpan(child: SizedBox(width: 5)),
          TextSpan(text: "4.8"),
          WidgetSpan(child: SizedBox(width: 5)),
          MySpanWidget(ReviewNumber()),
        ],
      ),
    );
  }
}
