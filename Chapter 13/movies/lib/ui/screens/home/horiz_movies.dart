import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/data/models/models.dart';
import 'package:movies/providers.dart';
import 'package:movies/ui/widgets/movie_widget.dart';
import 'package:movies/utils/utils.dart';

class HorizontalMovies extends ConsumerWidget {
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<MovieResults> movies;

  const HorizontalMovies(
      {required this.onMovieTap,
      required this.movies,
      required this.movieType,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsync = ref.watch(movieViewModelProvider);
    return movieAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => Container(),
      data: (viewModel) {
        return SizedBox(
          height: 142,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final imageUrl =
                    viewModel.getImageUrl(ImageSize.small, movies[index].posterPath);
                return imageUrl != null ? MovieWidget(
                  movieId: movies[index].id,
                  movieUrl: imageUrl,
                  onMovieTap: onMovieTap,
                  movieType: movieType,
                ) : emptyWidget;
              }),
        );
      },
    );
  }
}
