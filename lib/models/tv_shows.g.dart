// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_shows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return TvShows(
    page: json['page'] as int,
    results: (json['results'] as List<dynamic>)
        .map((e) => TVShow.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TvShowsToJson(TvShows instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
