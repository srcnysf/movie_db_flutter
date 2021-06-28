import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:movie_db_flutter/ui/detail/detail_view.dart';
import 'package:movie_db_flutter/widgets/base_widget_view.dart';
import 'package:movie_db_flutter/widgets/order_item.dart';
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
              body: Scaffold(
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: model.movies.results.length > 10
                                ? 10
                                : model.movies.results.length,
                            padding: EdgeInsets.all(4),
                            itemBuilder: (context, index) {
                              return OpenContainer(
                                closedElevation: 0,
                                openElevation: 0,
                                closedColor: Colors.transparent,
                                openColor: Colors.transparent,
                                transitionType: ContainerTransitionType.fade,
                                transitionDuration:
                                    const Duration(milliseconds: 400),
                                openBuilder: (context, action) {
                                  return DetailView();
                                },
                                closedBuilder: (context, action) {
                                  return MealListItem(
                                      url: model
                                          .movies.results[index].poster_path);
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
