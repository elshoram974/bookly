
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/data/datasources/home_local_datasource.dart';
import '../../../features/home/data/datasources/home_remote_datasource.dart';
import '../../../features/home/data/repositories/home_repositories_imp.dart';
import '../api_services.dart';

final GetIt getIt = GetIt.instance;

void getItSingleton() {
  getIt.registerSingleton<HomeRepositoriesImp>(
    HomeRepositoriesImp(
      localDataSource: HomeLocalDataSourceImp(),
      remoteDataSource: HomeRemoteDataSourceImp(APIServices(Dio())),
    ),
  );
}