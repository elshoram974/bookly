import 'package:bookly/core/utils/constants/assets_constants.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
      child: Image(image: AssetImage(AppAssets.logo)),
    );
  }
}
