// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DBFavoriteImpl _$$DBFavoriteImplFromJson(Map<String, dynamic> json) =>
    _$DBFavoriteImpl(
      id: (json['id'] as num).toInt(),
      movieId: (json['movieId'] as num).toInt(),
      backdropPath: json['backdropPath'] as String,
      posterPath: json['posterPath'] as String,
      favorite: json['favorite'] as bool,
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      title: json['title'] as String,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$DBFavoriteImplToJson(_$DBFavoriteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movieId': instance.movieId,
      'backdropPath': instance.backdropPath,
      'posterPath': instance.posterPath,
      'favorite': instance.favorite,
      'popularity': instance.popularity,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'title': instance.title,
      'overview': instance.overview,
    };
