import 'package:flutter/material.dart';

import '../../../../../../../core/constants/styles.dart';

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
