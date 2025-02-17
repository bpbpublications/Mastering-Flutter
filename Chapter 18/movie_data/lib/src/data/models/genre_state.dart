import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movie_data/src/data/models/genre.dart';

part 'genre_state.freezed.dart';
part 'genre_state.g.dart';

@freezed
class GenreState with _$GenreState {
  const factory GenreState({
    required Genre genre,
    required bool isSelected,
  }) = _GenreState;

  factory GenreState.fromJson(Map<String, dynamic> json) => _$GenreStateFromJson(json);
}

