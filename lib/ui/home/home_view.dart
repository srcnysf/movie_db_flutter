import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:movie_db_flutter/constants/constants.dart';
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
                backgroundColor: Colors.black,
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.cancel_outlined,
                                      size: 40,
                                    ))
                              ],
                            ),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w500${model.movies?.results.first.poster_path}",
                                  ),
                                ),
                              ),
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: FractionalOffset.bottomCenter,
                                  end: FractionalOffset.center,
                                  colors: [
                                    Colors.black.withOpacity(1.0),
                                    Colors.black.withOpacity(0.8),
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.1),
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${model.movies?.results.first.title}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4!
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                            Text(
                                              "TV Show",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Constants.grey,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                            Text(
                                              "Latest Content",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
                                                  .copyWith(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(45.0),
                                            ),
                                            color: Constants.green,
                                            child: Text(
                                              "Watch",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                            ),
                                            onPressed: () {})
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15),
                          child: Text(
                            "Popular TV Shows",
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: 225,
                          child: ListView.builder(
                            controller: model.scrollControllerTvShows,
                            scrollDirection: Axis.horizontal,
                            itemCount: model.tvShows?.results.length ?? 0,
                            padding: EdgeInsets.symmetric(horizontal: 20),
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
                                  return DetailView(
                                    isMovie: false,
                                    id: model.tvShows!.results[index].id,
                                    url: model
                                        .tvShows!.results[index].poster_path!,
                                  );
                                },
                                closedBuilder: (context, action) {
                                  return CardItem(
                                      url: model
                                          .tvShows!.results[index].poster_path);
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15),
                          child: Text(
                            "Popular Movies",
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: 225,
                          child: ListView.builder(
                            controller: model.scrollControllerMovies,
                            scrollDirection: Axis.horizontal,
                            itemCount: model.movies?.results.length ?? 0,
                            padding: EdgeInsets.symmetric(horizontal: 20),
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
                                  return DetailView(
                                    isMovie: true,
                                    id: model.movies!.results[index].id,
                                    url: model
                                        .movies!.results[index].poster_path!,
                                  );
                                },
                                closedBuilder: (context, action) {
                                  return CardItem(
                                      url: model
                                          .movies!.results[index].poster_path);
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
