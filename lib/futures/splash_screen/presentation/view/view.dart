

import 'package:bookly/futures/splash_screen/presentation/view/widgets/logo_widget.dart';
import 'package:bookly/futures/splash_screen/presentation/view/widgets/sliding_text_animation.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LogoWidget(),
          SlidingTextAnimation(),
        ],
      ),
    );
  }
}
