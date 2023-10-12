import 'package:bookly/core/utils/constants/app_strings.dart';
import 'package:bookly/core/utils/constants/color_constants.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:bookly/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Future.wait([
    Hive.openBox(AppStrings.featureBooks),
    Hive.openBox(AppStrings.suggestionBooks),
  ]);

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColor.primary,
        fontFamily: AppStrings.montserrat,
      ),
      routerConfig: AppRoute.router,
    );
  }
}
