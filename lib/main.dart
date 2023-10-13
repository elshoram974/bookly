import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/core/utils/constants/app_strings.dart';
import 'package:bookly/core/utils/constants/color_constants.dart';
import 'package:bookly/core/utils/localization/generated/l10n.dart';
import 'package:bookly/features/home/data/datasources/home_local_datasource.dart';
import 'package:bookly/features/home/data/datasources/home_remote_datasource.dart';
import 'package:bookly/features/home/data/repositories/home_repositories_imp.dart';
import 'package:bookly/features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'package:bookly/features/home/domain/usecases/fetch_suggestion_books_usecase.dart';
import 'package:bookly/features/home/presentation/cubit/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly/routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

import 'core/utils/functions/hive/init_hive.dart';
import 'features/home/presentation/cubit/fetch_suggested_books_cubit/fetch_suggested_books_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  getItSingleton();

  runApp(const BooklyApp());
}

final GetIt getIt = GetIt.instance;

void getItSingleton() {
  getIt.registerSingleton<HomeRepositoriesImp>(
    HomeRepositoriesImp(
      localDataSource: HomeLocalDataSourceImp(),
      remoteDataSource: HomeRemoteDataSourceImp(APIServices(Dio())),
    ),
  );
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => FetchFeaturedBooksCubit(
            FetchFeaturedBooksUseCase(getIt.get<HomeRepositoriesImp>()),
          ),
        ),
        BlocProvider(
          create: (_) => FetchSuggestedBooksCubit(
            FetchSuggestionBooksUseCase(getIt.get<HomeRepositoriesImp>()),
          ),
        ),
      ],
      child: const BooklyMaterialApp(),
    );
  }
}

class BooklyMaterialApp extends StatelessWidget {
  const BooklyMaterialApp({super.key});

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
