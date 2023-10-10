import 'package:bookly/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'bookly_item/book_photo.dart';

class BooklyHorizontalList extends StatelessWidget {
  const BooklyHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.2759 * MediaQuery.sizeOf(context).height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        padding: const EdgeInsets.symmetric(
          horizontal: 1.5 * AppConstants.defaultPadding,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 0.75 * AppConstants.defaultPadding,
            ),
            child: BookPhoto(),
          );
        },
      ),
    );
  }
}
