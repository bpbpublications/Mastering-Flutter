import 'package:flutter/material.dart';

import 'package:movies/data/database/models/favorite.dart';
import 'package:movies/utils/utils.dart';
import 'package:movies/ui/movie_viewmodel.dart';
import 'package:movies/ui/widgets/favorite_row.dart';

class VerticalFavoriteList extends StatelessWidget {
  final List<DBFavorite> favorites;
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;
  final OnFavoriteResultsTap onFavoritesTap;

  const VerticalFavoriteList(
      {super.key,
      required this.favorites,
      required this.movieViewModel,
      required this.onMovieTap,
        required this.onFavoritesTap,
      });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return FavoriteRow(
            favorite: favorites[index],
            movieViewModel: movieViewModel,
            onMovieTap: (id) {
              onMovieTap(id);
            },
            onFavoritesTap: (favorite) {
              onFavoritesTap(favorite);
            },
          );
        },
        childCount: favorites.length, // Number of items in the list
      ),
    );
  }
}
