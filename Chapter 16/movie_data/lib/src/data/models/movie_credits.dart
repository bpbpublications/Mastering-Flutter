import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credits.freezed.dart';
part 'movie_credits.g.dart';

@freezed
class MovieCredits with _$MovieCredits {
  const factory MovieCredits({
    @JsonKey(name: 'id')
    required int id,
    @JsonKey(name: 'cast')
    required List<MovieCast> cast,
    @JsonKey(name: 'crew')
    required List<MovieCast> crew,
  }) = _MovieCredits;

  factory MovieCredits.fromJson(Map<String, dynamic> json) => _$MovieCreditsFromJson(json);
}

@freezed
class MovieCast with _$MovieCast {
  const factory MovieCast({
    @JsonKey(name: 'adult')
    required bool adult,
    @JsonKey(name: 'gender')
    required int gender,
    @JsonKey(name: 'id')
    required int id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'original_name')
    required String originalName,
    @JsonKey(name: 'popularity')
    required double popularity,
    @JsonKey(name: 'profile_path')
    required String? profilePath,
    @JsonKey(name: 'cast_id')
    int? castId,
    @JsonKey(name: 'character')
    String? character,
    @JsonKey(name: 'credit_id')
    required String creditId,
    @JsonKey(name: 'order')
    int? order,
    @JsonKey(name: 'job')
    String? job,
  }) = _MovieCast;

  factory MovieCast.fromJson(Map<String, dynamic> json) => _$MovieCastFromJson(json);
}


