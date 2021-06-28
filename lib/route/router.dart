import 'package:auto_route/auto_route.dart';
import 'package:movie_db_flutter/ui/home/home_view.dart';
import 'package:movie_db_flutter/ui/splash/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: HomeView),
  ],
)
class $AppRouter {}
