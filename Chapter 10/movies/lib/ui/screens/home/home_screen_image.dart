import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movies/providers.dart';
import 'package:movies/utils/utils.dart';
import 'package:movies/ui/movie_viewmodel.dart';

const delayTime = 1000 * 10;
const animationTime = 1000;

class HomeScreenImage extends ConsumerWidget {
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;

  const HomeScreenImage({required this.movieViewModel, required this.onMovieTap, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width - 32;
    return SizedBox(
      height: 374,
      child: Swiper(
        autoplayDelay: delayTime,
        duration: animationTime,
        itemWidth: screenWidth,
        autoplay: true,
        itemCount: movieViewModel.nowPlayingMovies.length,
        itemBuilder: (BuildContext context, int index) {
          final currentMovie = movieViewModel.nowPlayingMovies[index];
          String uniqueHeroTag = '${currentMovie.image}swiper';
          return GestureDetector(
            onTap: () {
              ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
              onMovieTap(currentMovie.movieId);
            },
            child: Hero(
              tag: uniqueHeroTag,
              child: CachedNetworkImage(
                imageUrl: currentMovie.image,
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
                height: 374,
                width: screenWidth,
              ),
            ),
          );
        },
      ),
    );
  }
}
