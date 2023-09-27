import 'package:bookly/futures/home/presentation/view/view.dart';
import 'package:bookly/futures/splash_screen/presentation/view/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String productScreen = '/productScreen';

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
    ],
  );
}
