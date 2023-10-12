import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/core/utils/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../custom_app_bar.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leftWidget: InkWell(
        onTap: GoRouter.of(context).pop,
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
        child: const Icon(Icons.close, size: 26),
      ),
      rightWidget: SvgPicture.asset(AppAssets.icCart),
    );
  }
}
