// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieResultsImpl _$$MovieResultsImplFromJson(Map<String, dynamic> json) =>
    _$MovieResultsImpl(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num).toInt(),
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      adult: json['adult'] as bool,
      title: json['title'] as String,
      originalLanguage: json['original_language'] as String,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: _parseDate(json['release_date'] as String?),
      video: json['video'] as bool,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
    );

Map<String, dynamic> _$$MovieResultsImplToJson(_$MovieResultsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backdrop_path', instance.backdropPath);
  val['id'] = instance.id;
  val['original_title'] = instance.originalTitle;
  val['overview'] = instance.overview;
  writeNotNull('poster_path', instance.posterPath);
  writeNotNull('media_type', instance.mediaType);
  val['adult'] = instance.adult;
  val['title'] = instance.title;
  val['original_language'] = instance.originalLanguage;
  val['genre_ids'] = instance.genreIds;
  val['popularity'] = instance.popularity;
  writeNotNull('release_date', instance.releaseDate?.toIso8601String());
  val['video'] = instance.video;
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
