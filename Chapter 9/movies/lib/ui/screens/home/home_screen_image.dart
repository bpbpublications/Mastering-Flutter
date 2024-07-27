import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers.dart';
import '../../../utils/utils.dart';

const delayTime = 1000 * 10;
const animationTime = 1000;

class HomeScreenImage extends ConsumerWidget {
  final OnMovieTap onMovieTap;

  HomeScreenImage({super.key, required this.onMovieTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.read(movieImagesProvider);
    final screenWidth = MediaQuery.of(context).size.width - 32;
    return SizedBox(
      height: 374,
      child: Swiper(
        autoplayDelay: delayTime,
        duration: animationTime,
        itemWidth: screenWidth,
        autoplay: true,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              ref.read(heroTagProvider.notifier).state = movies[index] + 'swiper';
              onMovieTap(index);
            },
            child: Hero(
              tag: movies[index] + 'swiper',
              child: CachedNetworkImage(
                imageUrl: movies[index],
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
