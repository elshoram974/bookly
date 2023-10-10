import 'package:bookly/features/home/presentation/widgets/home/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/home/home_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(),
          HomeList(),
        ],
      ),
    );
  }
}