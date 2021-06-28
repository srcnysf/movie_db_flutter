// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvDetail _$TvDetailFromJson(Map<String, dynamic> json) {
  return TvDetail(
    homepage: json['homepage'] as String?,
    id: json['id'] as int,
    vote_average: json['vote_average'] as int?,
    overview: json['overview'] as String?,
    backdrop_path: json['backdrop_path'] as String?,
    name: json['name'] as String?,
    first_air_date: json['first_air_date'] as String?,
    number_of_seasons: json['number_of_seasons'] as int?,
    number_of_episodes: json['number_of_episodes'] as int?,
  );
}

Map<String, dynamic> _$TvDetailToJson(TvDetail instance) => <String, dynamic>{
      'id': instance.id,
      'vote_average': instance.vote_average,
      'overview': instance.overview,
      'backdrop_path': instance.backdrop_path,
      'name': instance.name,
      'homepage': instance.homepage,
      'first_air_date': instance.first_air_date,
      'number_of_seasons': instance.number_of_seasons,
      'number_of_episodes': instance.number_of_episodes,
    };
