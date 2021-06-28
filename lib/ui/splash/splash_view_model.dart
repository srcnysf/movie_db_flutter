import 'package:flutter/material.dart';
import 'package:movie_db_flutter/app_view_model.dart';

class SplashViewModel extends AppViewModel {
  init(BuildContext context) {
    new Future<void>.delayed(
        Duration(seconds: 3), () => navigationService.navigateHome(context));
  }
}
