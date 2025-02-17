// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DBMovieGenreImpl _$$DBMovieGenreImplFromJson(Map<String, dynamic> json) =>
    _$DBMovieGenreImpl(
      id: (json['id'] as num).toInt(),
      remoteId: (json['remoteId'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DBMovieGenreImplToJson(_$DBMovieGenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'remoteId': instance.remoteId,
      'name': instance.name,
    };
