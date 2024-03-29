import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/screens/details_screen.dart';
import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:bookly/features/splash_screen/presentation/screen/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String detailsScreen = '/detailsScreen';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const MySplashScreen();
        },
      ),
      GoRoute(
        path: homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: detailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return DetailsScreen(book: state.extra as HomeBooksEntity);
        },
      ),
    ],
  );
}
