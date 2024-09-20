// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieVideosImpl _$$MovieVideosImplFromJson(Map<String, dynamic> json) =>
    _$MovieVideosImpl(
      id: (json['id'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieVideosImplToJson(_$MovieVideosImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };

_$MovieVideoImpl _$$MovieVideoImplFromJson(Map<String, dynamic> json) =>
    _$MovieVideoImpl(
      name: json['name'] as String,
      key: json['key'] as String,
      size: (json['size'] as num).toInt(),
      official: json['official'] as bool,
      publishedAt: DateTime.parse(json['published_at'] as String),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$MovieVideoImplToJson(_$MovieVideoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'size': instance.size,
      'official': instance.official,
      'published_at': instance.publishedAt.toIso8601String(),
      'id': instance.id,
    };
