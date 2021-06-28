import 'package:movie_db_flutter/models/movies.dart';
import 'package:movie_db_flutter/models/tv_shows.dart';

import '../../app_view_model.dart';

class HomeViewModel extends AppViewModel {
  late TvShows tvShows;
  late Movies movies;
  void init() async {
    await runBusyFuture(getPopularTvShows());
    await runBusyFuture(getPopularMovies());
    notifyListeners();
  }

  getPopularTvShows() async {
    tvShows = await repository.getPopularTvShows().catchError(
      (error) {
        error.maybeWhen(apiError: (code, error) {
          setError(error);
        }, orElse: () {
          setError("Unexpected Error");
        });
      },
    );
  }

  getPopularMovies() async {
    movies = await repository.getPopularMovies().catchError(
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
