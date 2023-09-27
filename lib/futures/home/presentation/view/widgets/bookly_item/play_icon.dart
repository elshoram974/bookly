import 'dart:ui';

import 'package:flutter/material.dart';

class PlayIcon extends StatelessWidget {
  const PlayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}