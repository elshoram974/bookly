import 'package:bookly/core/utils/app_constants.dart';
import 'package:bookly/core/utils/assets_constants.dart';
import 'package:flutter/material.dart';

import 'play_icon.dart';

class BookPhoto extends StatelessWidget {
  const BookPhoto({
    super.key,
    this.showPlayIcon = true,
    this.onTap,
  });

  final bool showPlayIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 150 / 224,
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
              alignment: const Alignment(0.6, 0.732),
              child: showPlayIcon ? const PlayIcon() : null,
            ),
          ],
        ),
      ),
    );
  }
}
