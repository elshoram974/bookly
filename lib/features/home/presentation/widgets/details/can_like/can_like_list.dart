import 'package:flutter/material.dart';

import '../../home/bookly_item/book_photo.dart';

class CanLikeList extends StatelessWidget {
  const CanLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(
            20,
            (index) => const Padding(
              padding: EdgeInsets.only(right: 10),
              child: BookPhoto(showPlayIcon: false),
            ),
          )
        ],
      ),
    );
  }
}
