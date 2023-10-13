import 'package:flutter/material.dart';

import '../../../domain/entities/home_entity.dart';
import '../home/bookly_item/book_photo.dart';

class DetailsBookPhoto extends StatelessWidget {
  const DetailsBookPhoto({super.key, required this.book});
  final HomeBooksEntity book;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).shortestSide / 2.5,
        child: BookPhoto(book: book, showPlayIcon: false),
      ),
    );
  }
}
