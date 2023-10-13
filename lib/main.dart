import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/functions/hive/init_hive.dart';
import 'core/utils/services/bloc_observer.dart';
import 'core/utils/services/get_it.dart';
import 'features/bookly_material.dart';
import 'features/home/data/repositories/home_repositories_imp.dart';
import 'features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'features/home/domain/usecases/fetch_suggestion_books_usecase.dart';
import 'features/home/presentation/cubit/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'features/home/presentation/cubit/fetch_suggested_books_cubit/fetch_suggested_books_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  getItSingleton();

  Bloc.observer = MyBlocObserver();

  runApp(const BooklyApp());
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
