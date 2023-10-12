import 'package:bookly/core/utils/constants/app_strings.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HomeBooksEntityAdapter());
  await Future.wait([
    Hive.openBox(AppStrings.featureBooks),
    Hive.openBox(AppStrings.suggestionBooks),
  ]);
}