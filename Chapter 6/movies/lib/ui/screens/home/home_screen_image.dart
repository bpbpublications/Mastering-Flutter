import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movies/providers.dart';

const delayTime = 1000 * 10;
const animationTime = 1000;

class HomeScreenImage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.read(movieImagesProvider);
    final screenWidth = MediaQuery.of(context).size.width - 32;
    return SizedBox(
      height: 374,
      child: Swiper(
        autoplayDelay: delayTime,
        duration: animationTime,
        itemWidth: screenWidth,
        autoplay: true,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return CachedNetworkImage(
            imageUrl: images[index],
            alignment: Alignment.topCenter,
            fit: BoxFit.fitHeight,
            height: 374,
            width: screenWidth,
          );
        },
      ),
    );
  }
}
