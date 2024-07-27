import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/movie_widget.dart';

class HorizontalMovies extends StatelessWidget {
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<String> movies;

  const HorizontalMovies(
      {required this.onMovieTap, required this.movies, required this.movieType, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return MovieWidget(movieId: index, movieUrl: movies[index], onMovieTap: onMovieTap, movieType: movieType,);
          }),
    );
  }
}
