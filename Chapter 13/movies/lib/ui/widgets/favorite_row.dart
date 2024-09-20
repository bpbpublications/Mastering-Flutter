import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/data/database/models/favorite.dart';

import 'package:movies/utils/utils.dart';
import 'package:movies/ui/movie_viewmodel.dart';

class FavoriteRow extends StatelessWidget {
  final DBFavorite favorite;
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;
  final OnFavoriteResultsTap onFavoritesTap;

  const FavoriteRow(
      {super.key,
      required this.favorite,
      required this.movieViewModel,
      required this.onMovieTap,
      required this.onFavoritesTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textWidth = screenWidth - 132;
    final imageUrl =
        movieViewModel.getImageUrl(ImageSize.small, favorite.posterPath);
    return GestureDetector(
      onTap: () => onMovieTap(favorite.movieId),
      child: SizedBox(
        height: 148,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            addHorizontalSpace(16),
            SizedBox(
              height: 140,
              width: 100,
              child: imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: imageUrl,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                      height: 140,
                      width: 100,
                    )
                  : emptyWidget,
            ),
            addHorizontalSpace(16),
            Stack(
              children: [
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    onPressed: () => onFavoritesTap(favorite),
                    icon: favorite.favorite
                        ? const Icon(
                            Icons.favorite_outlined,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                  ),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: textWidth,
                            child: AutoSizeText(
                              favorite.title,
                              maxLines: 1,
                              minFontSize: 10,
                              style: Theme.of(context).textTheme.labelLarge,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          addVerticalSpace(4),
                          Text(
                            yearFormat.format(favorite.releaseDate),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          addVerticalSpace(4),
                        ],
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
