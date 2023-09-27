import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/core/constants/assets_constants.dart';
import 'package:flutter/material.dart';

import 'play_icon.dart';

class BooklyItemInList extends StatelessWidget {
  const BooklyItemInList({super.key, this.showPlayIcon = true});

  final bool showPlayIcon;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 9,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
              image: const DecorationImage(
                image: AssetImage(AppAssets.imageTest),
                fit: BoxFit.fill,
              ),
            ),
            alignment: const Alignment(0.75, 0.9),
            child: showPlayIcon ? const PlayIcon() : null,
          ),
        ],
      ),
    );
  }
}