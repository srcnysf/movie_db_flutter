import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable()
class MovieDetail {
  final int id;
  final double? vote_average;
  final String? overview;
  final String? backdrop_path;
  final String? title;
  final String? release_date;
  final String? homepage;
  MovieDetail({
    required this.id,
    required this.vote_average,
    required this.overview,
    required this.backdrop_path,
    required this.title,
    required this.release_date,
    required this.homepage,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);
}
