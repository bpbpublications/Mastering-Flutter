import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/utils/utils.dart';

import '../../providers.dart';
import 'movie_row.dart';

typedef OnMovieTap = void Function(int movieId);

class VerticalMovieList extends ConsumerWidget {
  final List<String> movies;
  final OnMovieTap onMovieTap;

  const VerticalMovieList({
    super.key,
    required this.movies,
    required this.onMovieTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (movies.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      children: [
        movies.length > 1 ? MovieRow(
          movie: movies[0],
        ) : const SizedBox.shrink(),
        addVerticalSpace(10),
        movies.length > 2 ? MovieRow(
          movie: movies[1],
        ) : const SizedBox.shrink(),
      ],
    );
  }
}
