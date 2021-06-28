import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_db_flutter/route/router.gr.dart';

class NavigationService {
  void popMain(BuildContext context) {
    return AutoRouter.of(context).popUntilRoot();
  }

  Future<dynamic> navigateHome(BuildContext context) {
    return AutoRouter.of(context).replace(HomeRoute());
  }
}
