import 'package:flutter/material.dart';
import 'package:movie_db_flutter/models/movies.dart';
import 'package:movie_db_flutter/models/tv_shows.dart';

import '../../app_view_model.dart';

class HomeViewModel extends AppViewModel {
  ScrollController scrollControllerMovies = ScrollController();
  ScrollController scrollControllerTvShows = ScrollController();
  TvShows? tvShows;
  Movies? movies;
  bool isMovieLoading = false;
  bool isTvShowsLoading = false;
  void init() async {
    setBusy(true);
    await runBusyFuture(getPopularTvShows());
    await runBusyFuture(getPopularMovies());
    notifyListeners();
    scrollControllerMovies.addListener(() {
      _movieScrollListener();
    });
    scrollControllerTvShows.addListener(() {
      _tvShowsScrollListener();
    });
  }

  _movieScrollListener() async {
    if (scrollControllerMovies.position.maxScrollExtent / 2 >
        scrollControllerMovies.offset) {
      return;
    }
    if (isMovieLoading == false) {
      isMovieLoading = true;
      var page = movies!.page;
      page = page + 1;
      await getPopularMoviesPaginaton(page: page++);
      notifyListeners();
    }
  }

  _tvShowsScrollListener() async {
    if (scrollControllerTvShows.position.maxScrollExtent / 2 >
        scrollControllerTvShows.offset) {
      return;
    }
    if (isTvShowsLoading == false) {
      isTvShowsLoading = true;
      var page = tvShows!.page;
      page = page + 1;
      await getPopularTvShowsPaginaton(page: page++);
      notifyListeners();
    }
  }

  getPopularTvShows() async {
    tvShows = await repository.getPopularTvShows(page: 1).catchError(
      (error) {
        error.maybeWhen(apiError: (code, error) {
          setError(error);
        }, orElse: () {
          setError("Unexpected Error");
        });
      },
    );
  }

  getPopularMovies({int? page}) async {
    movies = await repository.getPopularMovies(page: page ?? 1).catchError(
      (error) {
        error.maybeWhen(apiError: (code, error) {
          setError(error);
        }, orElse: () {
          setError("Unexpected Error");
        });
      },
    );
  }

  getPopularMoviesPaginaton({int? page}) async {
    await repository.getPopularMovies(page: page ?? 1).then((value) {
      movies!.page = value.page;
      movies!.results.addAll(value.results);
      isMovieLoading = false;
      notifyListeners();
    }).catchError(
      (error) {
        error.maybeWhen(apiError: (code, error) {
          setError(error);
        }, orElse: () {
          setError("Unexpected Error");
        });
      },
    );
  }

  getPopularTvShowsPaginaton({int? page}) async {
    await repository.getPopularTvShows(page: page ?? 1).then((value) {
      tvShows!.page = value.page;
      tvShows!.results.addAll(value.results);
      isTvShowsLoading = false;
      notifyListeners();
    }).catchError(
      (error) {
        error.maybeWhen(apiError: (code, error) {
          setError(error);
        }, orElse: () {
          setError("Unexpected Error");
        });
      },
    );
  }
}
