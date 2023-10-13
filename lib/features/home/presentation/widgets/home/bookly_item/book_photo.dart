import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:flutter/material.dart';

import 'play_icon.dart';

class BookPhoto extends StatelessWidget {
  const BookPhoto({
    super.key,
    this.showPlayIcon = true,
    this.onTap,
    required this.book,
  });

  final bool showPlayIcon;
  final HomeBooksEntity book;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: book.idEntity,
        child: AspectRatio(
          aspectRatio: 150 / 224,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConstants.defaultRadius),
                  image: DecorationImage(
                    image: NetworkImage(book.photoEntity),
                    fit: BoxFit.fill,
                  ),
                ),
                alignment: const Alignment(0.6, 0.732),
                child: showPlayIcon ? const PlayIcon() : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
