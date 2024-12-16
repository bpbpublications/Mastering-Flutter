import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movie_data/movie_data.dart';
import 'package:movies/utils/utils.dart';
import 'package:movies/ui/movie_viewmodel.dart';
import 'package:movies/ui/widgets/movie_row.dart';

class VerticalMovieList extends ConsumerWidget {
  final List<MovieResults> movies;
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;

  const VerticalMovieList(
      {super.key,
      required this.movies,
      required this.movieViewModel,
      required this.onMovieTap,
      });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: movies.length, // Number of items in the list
        (BuildContext context, int index) {
          return MovieRow(
            movie: movies[index],
            movieViewModel: movieViewModel,
            onMovieTap: (movie) {
              onMovieTap(movie.id);
            },
          );
        },
      ),
    );
  }
}
