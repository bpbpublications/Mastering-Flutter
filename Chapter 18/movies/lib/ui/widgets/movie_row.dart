import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movie_data/movie_data.dart';
import 'package:movies/providers.dart';
import 'package:movies/utils/utils.dart';
import 'package:movies/ui/movie_viewmodel.dart';

class MovieRow extends ConsumerWidget {
  final MovieResults movie;
  final MovieViewModel movieViewModel;
  final OnMovieResultsTap onMovieTap;

  const MovieRow({
    required this.movie,
    required this.movieViewModel,
    required this.onMovieTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrl =
        movieViewModel.getImageUrl(ImageSize.small, movie.posterPath);
    final uniqueHeroTag = '${imageUrl}MovieRow';
    return GestureDetector(
      onTap: () {
        ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
        onMovieTap(movie);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 140,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              addHorizontalSpace(16),
              SizedBox(
                height: 142,
                width: 100,
                child: Hero(
                  tag: uniqueHeroTag,
                  child: imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: imageUrl,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                          height: 142,
                          width: 100,
                        )
                      : emptyWidget,
                ),
              ),
              addHorizontalSpace(16),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        SizedBox(
                          width: constraints.maxWidth,
                          child: AutoSizeText(
                            movie.title,
                            maxLines: 3,
                            minFontSize: 10,
                            style: Theme.of(context).textTheme.labelLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        addVerticalSpace(4),
                        movie.releaseDate != null
                            ? Text(
                                yearFormat.format(movie.releaseDate!),
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            : Container(),
                        addVerticalSpace(4),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
