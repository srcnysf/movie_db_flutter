import 'package:dio/dio.dart';
import 'package:movie_db_flutter/models/movie_detail.dart';
import 'package:movie_db_flutter/models/movies.dart';
import 'package:movie_db_flutter/models/tv_detail.dart';
import 'package:movie_db_flutter/models/tv_shows.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/tv/popular")
  Future<TvShows> getPopularTvShows(@Query("api_key") String? apiKey);

  @GET("/movie/popular")
  Future<Movies> getPopularMovies(@Query("api_key") String? apiKey);

  @GET("/tv/latest")
  Future<void> getLatestTvShows(@Query("api_key") String? apiKey);

  @GET("/movie/{movie_id}")
  Future<MovieDetail> getMovie(
      @Query("api_key") String? apiKey, @Path("movie_id") int? movieId);

  @GET("/tv/{tv_id}")
  Future<TvDetail> getTvShow(
      @Query("api_key") String? apiKey, @Path("tv_id") int? tvId);
}
