import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/core/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 2 * AppConstants.defaultPadding,
          vertical: AppConstants.defaultPadding,
        ),
        child: Row(
          children: [
            Image.asset(AppAssets.logo, width: 75),
            const Spacer(),
            SvgPicture.asset(AppAssets.icSearch),
          ],
        ),
      ),
    );
  }
}
