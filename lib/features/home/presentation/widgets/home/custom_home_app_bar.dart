import 'package:bookly/core/utils/constants/assets_constants.dart';
import 'package:bookly/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leftWidget: Image.asset(AppAssets.logo, width: 75),
      rightWidget: SvgPicture.asset(AppAssets.icSearch),
    );
  }
}
