// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return MovieDetail(
    id: json['id'] as int,
    vote_average: json['vote_average'] as int?,
    overview: json['overview'] as String?,
    backdrop_path: json['backdrop_path'] as String?,
    title: json['title'] as String?,
    release_date: json['release_date'] as String?,
    homepage: json['homepage'] as String?,
  );
}

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vote_average': instance.vote_average,
      'overview': instance.overview,
      'backdrop_path': instance.backdrop_path,
      'title': instance.title,
      'release_date': instance.release_date,
      'homepage': instance.homepage,
    };
