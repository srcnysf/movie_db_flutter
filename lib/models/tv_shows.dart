import 'package:json_annotation/json_annotation.dart';
import 'package:movie_db_flutter/models/tv_show.dart';

part 'tv_shows.g.dart';

@JsonSerializable()
class TvShows {
  final int page;
  final List<TVShow> results;
  TvShows({
    required this.page,
    required this.results,
  });
  factory TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);
  Map<String, dynamic> toJson() => _$TvShowsToJson(this);
}
