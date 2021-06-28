import 'package:flutter/material.dart';
import 'package:movie_db_flutter/constants/constants.dart';
import 'package:movie_db_flutter/widgets/base_widget_view.dart';
import 'package:stacked/stacked.dart';

import 'splash_view_model.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        onModelReady: (model) => model.init(context),
        viewModelBuilder: () => SplashViewModel(),
        builder: (context, model, widget) {
          return BaseView(
              onError: model.hasError,
              onLoading: model.isBusy,
              error: Text(model.modelError.toString()),
              body: Scaffold(
                  backgroundColor: Constants.purple,
                  body: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Icon(
                            Icons.movie,
                            size: 60,
                          )),
                          Center(
                            child: Container(
                              child: Text("Movie DB",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                          fontSize: 28,
                                          color: Colors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.w900)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )));
        });
  }
}
