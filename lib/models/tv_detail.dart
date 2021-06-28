import 'package:json_annotation/json_annotation.dart';

part 'tv_detail.g.dart';

@JsonSerializable()
class TvDetail {
  final int id;
  final double? vote_average;
  final String? overview;
  final String? backdrop_path;
  final String? name;
  final String? homepage;
  final String? first_air_date;
  final int? number_of_seasons;
  final int? number_of_episodes;
  TvDetail({
    required this.homepage,
    required this.id,
    required this.vote_average,
    required this.overview,
    required this.backdrop_path,
    required this.name,
    required this.first_air_date,
    required this.number_of_seasons,
    required this.number_of_episodes,
  });

  factory TvDetail.fromJson(Map<String, dynamic> json) =>
      _$TvDetailFromJson(json);
  Map<String, dynamic> toJson() => _$TvDetailToJson(this);
}
