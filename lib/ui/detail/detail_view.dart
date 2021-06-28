import 'package:flutter/material.dart';
import 'package:movie_db_flutter/constants/constants.dart';
import 'package:movie_db_flutter/ui/detail/detail_view_model.dart';
import 'package:movie_db_flutter/widgets/base_widget_view.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailView extends StatelessWidget {
  final String url;
  final int id;
  final bool isMovie;
  DetailView({
    Key? key,
    required this.url,
    required this.id,
    required this.isMovie,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
        viewModelBuilder: () => DetailViewModel(),
        disposeViewModel: false,
        onModelReady: (model) => model.init(id, isMovie),
        builder: (context, model, widget) => BaseView(
              onError: model.hasError,
              onLoading: false,
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
                            Hero(
                              tag: url,
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500${url}",
                                    ),
                                  ),
                                ),
                                width: MediaQuery.of(context).size.width,
                              ),
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
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Constants.green),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text("9.4"),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      isMovie
                                                          ? model.movie
                                                                  ?.title ??
                                                              ""
                                                          : model.tvShow
                                                                  ?.name ??
                                                              "",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline4!
                                                          .copyWith(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    Text(
                                                      isMovie
                                                          ? "Movie"
                                                          : "TV Show",
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline5!
                                                          .copyWith(
                                                              color: Constants
                                                                  .grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
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
                                            onPressed: () {
                                              var url = isMovie
                                                  ? model.movie?.homepage
                                                  : model.tvShow?.homepage;
                                              launch(url!);
                                            })
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.black,
                                        size: 24,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              isMovie
                                  ? Container()
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Seasons",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Constants.grey,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              model.tvShow?.number_of_seasons
                                                      .toString() ??
                                                  "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4!
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Total episodes",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Constants.grey,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              model.tvShow?.number_of_episodes
                                                      .toString() ??
                                                  "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4!
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isMovie ? "Release Date" : "First Air Date",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: Constants.grey,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    isMovie
                                        ? model.movie?.release_date ?? ""
                                        : model.tvShow?.first_air_date ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Description",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: Constants.grey,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    isMovie
                                        ? model.movie?.overview ?? ""
                                        : model.tvShow?.overview ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
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
