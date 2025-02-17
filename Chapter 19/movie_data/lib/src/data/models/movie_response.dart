import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_data/src/data/models/movie_results.dart';

part 'movie_response.freezed.dart';

part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    required int page,
    required List<MovieResults> results,
    @JsonKey(name: 'total_pages')
    required int totalPages,
    @JsonKey(name: 'total_results')
    required int totalResults
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic>  json) => _$MovieResponseFromJson(json);

}