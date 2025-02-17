import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';

part 'genre.g.dart';

@freezed
class DBMovieGenre with _$DBMovieGenre {
  const factory DBMovieGenre({
    required int id,
    required int remoteId,
    required String name,
  }) = _DBMovieGenre;

  // Add this private constructor
  const DBMovieGenre._();

  factory DBMovieGenre.fromJson(Map<String, dynamic> json) => _$DBMovieGenreFromJson(json);

}
