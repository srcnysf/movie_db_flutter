import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'app_view_model.dart';
import 'constants/theme.dart';
import 'di/locator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
        viewModelBuilder: () => locator<AppViewModel>(),
        onModelReady: (model) => model.initApp(context),
        disposeViewModel: false,
        fireOnModelReadyOnce: true,
        builder: (context, model, child) => MaterialApp.router(
              scaffoldMessengerKey: model.scaffoldMessengerKey,
              routerDelegate: model.appRouter.delegate(),
              routeInformationParser: model.appRouter.defaultRouteParser(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              themeMode: model.darkModeOn ? ThemeMode.dark : ThemeMode.light,
              theme: ThemeConst.light,
              darkTheme: ThemeConst.dark,
              title: 'Movie DB',
              debugShowCheckedModeBanner: false,
            ));
  }
}
