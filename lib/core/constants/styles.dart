import 'package:flutter/material.dart';

const String kMontserrat = "Montserrat";
const String kGilroy = "Gilroy";
const String kSectra = "GT Sectra Fine";

abstract class AppStyle {
  static const TextStyle styleMedium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserrat,
  );
  static const TextStyle styleBold15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    fontFamily: kMontserrat,
  );
  static const TextStyle styleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: kGilroy,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleRegular20 = TextStyle(
    fontSize: 20,
    fontFamily: kSectra,
  );
}
