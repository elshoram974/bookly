import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('Change: ${change.toString()}');
    log('bloc: ${bloc.toString()}');
    super.onChange(bloc, change);
  }
}
