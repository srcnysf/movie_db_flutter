import 'package:json_annotation/json_annotation.dart';

part 'tv_show.g.dart';

@JsonSerializable()
class TVShow {
  final int id;
  final String? poster_path;
  TVShow({
    required this.id,
    required this.poster_path,
  });

  factory TVShow.fromJson(Map<String, dynamic> json) => _$TVShowFromJson(json);
  Map<String, dynamic> toJson() => _$TVShowToJson(this);
}
