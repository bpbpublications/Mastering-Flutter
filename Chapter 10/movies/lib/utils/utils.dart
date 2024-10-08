import 'package:flutter/material.dart';

import 'package:movies/data/models/favorite.dart';

typedef OnMovieTap = void Function(int movieId);
typedef OnMovieVideoTap = void Function(String video);
typedef OnFavoriteResultsTap = void Function(Favorite favorite);

Widget addVerticalSpace(double amount) {
  return SizedBox(height: amount);
}

Widget addHorizontalSpace(double amount) {
  return SizedBox(width: amount);
}

enum Sorting {
  aToz(name: 'A-Z'),
  zToa(name: 'Z-A'),
  rating(name: 'Rating'),
  year(name: 'Year');

  const Sorting({required this.name});

  final String name;
}

String youtubeUrlFromId(String videoId) {
  return 'https://www.youtube.com/watch?v=$videoId';
}

