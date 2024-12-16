import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movie_data/src/data/models/genre.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    @JsonKey(name: 'adult')
    required bool adult,
    @JsonKey(name: 'backdrop_path')
    required String backdropPath,
    @JsonKey(name: 'budget')
    required int budget,
    @JsonKey(name: 'genres')
    required List<Genre> genres,
    @JsonKey(name: 'homepage')
    required String homepage,
    @JsonKey(name: 'id')
    required int id,
    @JsonKey(name: 'imdb_id')
    required String imdbId,
    @JsonKey(name: 'origin_country')
    required List<String> originCountry,
    @JsonKey(name: 'original_language')
    required String originalLanguage,
    @JsonKey(name: 'original_title')
    required String originalTitle,
    @JsonKey(name: 'overview')
    required String overview,
    @JsonKey(name: 'popularity')
    required double popularity,
    @JsonKey(name: 'poster_path')
    required String posterPath,
    @JsonKey(name: 'release_date')
    required DateTime releaseDate,
    @JsonKey(name: 'revenue')
    required int revenue,
    @JsonKey(name: 'runtime')
    required int runtime,
    @JsonKey(name: 'status')
    required String status,
    @JsonKey(name: 'tagline')
    required String tagline,
    @JsonKey(name: 'title')
    required String title,
    @JsonKey(name: 'video')
    required bool video,
    @JsonKey(name: 'vote_average')
    required double voteAverage,
    @JsonKey(name: 'vote_count')
    required int voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);
}

