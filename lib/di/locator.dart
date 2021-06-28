import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_db_flutter/data/api_client.dart';
import 'package:movie_db_flutter/repository/repository.dart';
import 'package:movie_db_flutter/services/api_service.dart';
import 'package:movie_db_flutter/services/navigation_service.dart';
import 'package:movie_db_flutter/ui/home/home_view_model.dart';
import 'package:movie_db_flutter/utils/connectivity_util.dart';
import 'package:movie_db_flutter/utils/device_util.dart';
import 'package:movie_db_flutter/utils/error/default_error_factory.dart';
import 'package:movie_db_flutter/utils/error/error_factory.dart';
import 'package:movie_db_flutter/utils/preferences_util.dart';

import '../app_view_model.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  ///SERVICES
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ConnectivityUtil());
  locator.registerSingleton<PreferenceUtil>(await PreferenceUtil.getInstance());
  locator.registerSingleton<DeviceUtil>(await DeviceUtil.getInstance());
  locator.registerLazySingleton<Dio>(
      () => ApiClient(locator.get(), locator.get()).getDio());

  ///ERROR
  locator.registerLazySingleton(() => ErrorFactory);
  locator.registerLazySingleton(() => DefaultErrorFactory());

  ///NETWORK
  locator.registerLazySingleton(() => ApiService(locator.get()));
  locator.registerLazySingleton(() => Repository(locator.get(), locator.get()));

  ///UI
  locator.registerLazySingleton(() => AppViewModel());
  locator.registerLazySingleton(() => HomeViewModel());
}
