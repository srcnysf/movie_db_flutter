import 'package:json_annotation/json_annotation.dart';

import 'movie.dart';

part 'movies.g.dart';

@JsonSerializable()
class Movies {
  int page;
  final List<Movie> results;
  Movies({
    required this.page,
    required this.results,
  });
  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}
