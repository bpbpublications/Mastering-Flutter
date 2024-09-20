import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:movies/data/models/favorite.dart';
import 'package:movies/data/models/movie_videos.dart';
enum ImageSize {
  small,
  large
}
String getImageUrl(ImageSize size, String? path) {
  if (path == null) {
    return '';
  }
  switch (size) {
    case ImageSize.small:
      return 'http://image.tmdb.org/t/p/w154/$path';
    case ImageSize.large:
      return 'http://image.tmdb.org/t/p/w780/$path';
  }
}

String youtubeImageFromId(String videoId) {
  return 'https://img.youtube.com/vi/$videoId/hqdefault.jpg';
}

String youtubeUrlFromId(String videoId) {
  return 'https://www.youtube.com/watch?v=$videoId';
}


typedef OnMovieTap = void Function(int movieId);
typedef OnMovieVideoTap = void Function(MovieVideo video);
typedef OnFavoriteResultsTap = void Function(Favorite favorite);

Widget addVerticalSpace(double amount) {
  return SizedBox(height: amount);
}

Widget addHorizontalSpace(double amount) {
  return SizedBox(width: amount);
}

final yearFormat = DateFormat('yyyy');

enum Sorting {
  aToz(name: 'A-Z'),
  zToa(name: 'Z-A'),
  rating(name: 'Rating'),
  year(name: 'Year');

  const Sorting({required this.name});

  final String name;
}


