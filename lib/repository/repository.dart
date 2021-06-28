import 'package:movie_db_flutter/data/api_constants.dart';
import 'package:movie_db_flutter/models/movie_detail.dart';
import 'package:movie_db_flutter/models/movies.dart';
import 'package:movie_db_flutter/models/tv_detail.dart';
import 'package:movie_db_flutter/models/tv_shows.dart';
import 'package:movie_db_flutter/services/api_service.dart';
import 'package:movie_db_flutter/utils/error/default_error_factory.dart';
import 'package:movie_db_flutter/utils/error/network_error_utils.dart';

class Repository {
  final ApiService _apiService;

  final DefaultErrorFactory errorFactory;

  Repository(this._apiService, this.errorFactory);

  Future<TvShows> getPopularTvShows({required int page}) async {
    return await _apiService
        .getPopularTvShows(ApiConstants.API_KEY, page)
        .catchError((onError) => throw errorFactory.createApiError(
            1, NetworkErrorUtil.handleError(onError)));
  }

  Future<Movies> getPopularMovies({required int page}) async {
    return await _apiService
        .getPopularMovies(ApiConstants.API_KEY, page)
        .catchError((onError) => throw errorFactory.createApiError(
            1, NetworkErrorUtil.handleError(onError)));
  }

  Future<MovieDetail> getMovie(int id) async {
    return await _apiService.getMovie(ApiConstants.API_KEY, id).catchError(
        (onError) => throw errorFactory.createApiError(
            1, NetworkErrorUtil.handleError(onError)));
  }

  Future<TvDetail> getTvShow(int id) async {
    return await _apiService.getTvShow(ApiConstants.API_KEY, id).catchError(
        (onError) => throw errorFactory.createApiError(
            1, NetworkErrorUtil.handleError(onError)));
  }
}
