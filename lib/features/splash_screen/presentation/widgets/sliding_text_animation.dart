import 'package:bookly/core/constants/duration.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:bookly/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidingTextAnimation extends StatefulWidget {
  const SlidingTextAnimation({super.key});

  @override
  State<SlidingTextAnimation> createState() => _SlidingTextAnimationState();
}

class _SlidingTextAnimationState extends State<SlidingTextAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    slideAnimationMethod();
    navigateHomeScreen();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Text(S.of(context).readFreeBooks, textAlign: TextAlign.center),
    );
  }

  Future<void> navigateHomeScreen() {
    return Future.delayed(
      const Duration(seconds: AppDuration.splashDuration + 1),
      () {
        context.go(AppRoute.homeScreen);
      },
    );
  }

  void slideAnimationMethod() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: AppDuration.splashDuration),
    );

    _animation = Tween(begin: const Offset(0, 2), end: Offset.zero)
        .animate(_animationController);
    _animation.addListener(() => setState(() {}));
    _animationController.forward();
  }
}
