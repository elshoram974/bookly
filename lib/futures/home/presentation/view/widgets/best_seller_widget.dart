import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2 * AppConstants.defaultPadding),
      child: Text(
        S.of(context).bestSeller,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}