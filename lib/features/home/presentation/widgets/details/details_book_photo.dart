import 'package:flutter/material.dart';

import '../home/bookly_item/book_photo.dart';

class DetailsBookPhoto extends StatelessWidget {
  const DetailsBookPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).shortestSide / 2.5,
        child: const BookPhoto(showPlayIcon: false),
      ),
    );
  }
}
