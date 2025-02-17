import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';

part 'favorite.g.dart';

@freezed
class DBFavorite with _$DBFavorite {
  const factory DBFavorite({
    required int id,
    required int movieId,
    required String backdropPath,
    required String posterPath,
    required bool favorite,
    required double popularity,
    required DateTime releaseDate,
    required String title,
    required String overview,
  }) = _DBFavorite;

  // Add this private constructor
  const DBFavorite._();

  factory DBFavorite.fromJson(Map<String, dynamic> json) => _$DBFavoriteFromJson(json);

}
