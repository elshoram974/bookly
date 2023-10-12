import 'package:flutter/material.dart';

import 'constants/app_strings.dart';

abstract class AppStyle {
  static const TextStyle styleMedium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.montserrat,
  );
  static const TextStyle styleBold15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    fontFamily: AppStrings.montserrat,
  );
  static const TextStyle styleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: AppStrings.gilroy,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleRegular20 = TextStyle(
    fontSize: 20,
    fontFamily: AppStrings.sectra,
  );
}
