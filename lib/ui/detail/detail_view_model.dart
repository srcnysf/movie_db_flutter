import 'package:movie_db_flutter/models/movie_detail.dart';
import 'package:movie_db_flutter/models/tv_detail.dart';

import '../../app_view_model.dart';

class DetailViewModel extends AppViewModel {
  MovieDetail? movie;
  TvDetail? tvShow;
  init(int id, bool isMovie) async {
    isMovie ? runBusyFuture(getMovie(id)) : runBusyFuture(getTvShow(id));
    notifyListeners();
  }

  getMovie(id) async {
    movie = await repository.getMovie(id).catchError(
      (error) {
        error.maybeWhen(apiError: (code, error) {
          setError(error);
        }, orElse: () {
          setError("Unexpected Error");
        });
      },
    );
  }

  getTvShow(id) async {
    tvShow = await repository.getTvShow(id).catchError(
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
