import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:movie_db_flutter/repository/repository.dart';
import 'package:movie_db_flutter/route/router.gr.dart';
import 'package:movie_db_flutter/services/navigation_service.dart';
import 'package:movie_db_flutter/utils/connectivity_util.dart';
import 'package:movie_db_flutter/utils/device_util.dart';
import 'package:movie_db_flutter/utils/preferences_util.dart';
import 'package:stacked/stacked.dart';

import 'di/locator.dart';

class AppViewModel extends BaseViewModel {
  final PreferenceUtil preferences = locator<PreferenceUtil>();
  final ConnectivityUtil connectivity = locator<ConnectivityUtil>();
  final NavigationService navigationService = locator<NavigationService>();
  final Repository repository = locator<Repository>();
  final DeviceUtil deviceUtil = locator<DeviceUtil>();
  final appRouter = AppRouter();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  bool get darkModeOn => !preferences.theme!;
  initApp(BuildContext context) async {
    if (preferences.theme == null) {
      preferences.theme = brightness == Brightness.dark;
    }
    clearErrors();
    notifyListeners();
  }
}
