import 'package:flutter/material.dart';

import '../../../../../../../core/constants/styles.dart';

class WriterWidget extends StatelessWidget {
  const WriterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Opacity(
        opacity: 0.7,
        child: Text(
          "Rudyard Kipling",
          style: AppStyle.styleMedium14,
        ),
      ),
    );
  }
}