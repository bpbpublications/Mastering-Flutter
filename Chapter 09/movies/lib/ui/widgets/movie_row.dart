import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movies/providers.dart';
import 'package:movies/utils/utils.dart';

class MovieRow extends ConsumerWidget {
  final int movieId;
  final String movieUrl;
  final OnMovieTap onMovieTap;
  const MovieRow({required this.movieId, required this.movieUrl, required this.onMovieTap, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late String uniqueHeroTag = movieUrl + 'MovieRow';
    if (movieUrl.isNotEmpty) {
      return GestureDetector(
        onTap: () {
          ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
          onMovieTap(movieId);
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
                    child: CachedNetworkImage(
                      imageUrl: movieUrl,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                      height: 142,
                      width: 100,
                    ),
                  ),
                ),
                addHorizontalSpace(16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    AutoSizeText(
                      'Title',
                      maxLines: 1,
                      minFontSize: 10,
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    addVerticalSpace(4),
                    Text(
                      '1979',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    addVerticalSpace(4),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
