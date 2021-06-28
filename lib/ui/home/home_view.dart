import 'package:flutter/material.dart';
import 'package:movie_db_flutter/widgets/base_widget_view.dart';
import 'package:stacked/stacked.dart';

import '../../di/locator.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => locator<HomeViewModel>(),
        disposeViewModel: false,
        fireOnModelReadyOnce: false,
        onModelReady: (model) => model.init(),
        builder: (context, model, widget) => BaseView(
              onError: model.hasError,
              onLoading: model.isBusy,
              error: Text(model.modelError.toString()),
              body: Scaffold(),
            ));
  }
}
