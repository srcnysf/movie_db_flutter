// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TVShow _$TVShowFromJson(Map<String, dynamic> json) {
  return TVShow(
    id: json['id'] as int,
    poster_path: json['poster_path'] as String?,
  );
}

Map<String, dynamic> _$TVShowToJson(TVShow instance) => <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.poster_path,
    };
