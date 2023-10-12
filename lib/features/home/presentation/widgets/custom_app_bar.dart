import 'package:bookly/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
  });
  final Widget leftWidget;
  final Widget rightWidget;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 1.5 * AppConstants.defaultPadding,
          vertical: AppConstants.defaultPadding,
        ),
        child: Row(
          children: [
            leftWidget,
            const Spacer(),
            rightWidget,
          ],
        ),
      ),
    );
  }
}
