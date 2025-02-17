import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final images = ref.read(movieImagesProvider);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: movies.length, // Number of items in the list
        (BuildContext context, int index) {
          return MovieRow(
            movie: images[index],
          );
        },
      ),
    );
  }
}
