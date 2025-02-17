import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/providers.dart';

import 'package:movies/utils/utils.dart';
enum MovieType {
  Trending,
  TopRated,
  NowPlaying,
  Popular
}

class MovieWidget extends ConsumerStatefulWidget {
  final int movieId;
  final String movieUrl;
  final OnMovieTap onMovieTap;
  final MovieType movieType;

  const MovieWidget(
      {required this.movieId,
      required this.movieUrl,
      required this.onMovieTap,
      required this.movieType,
      super.key});

  @override
  ConsumerState<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends ConsumerState<MovieWidget>
    with SingleTickerProviderStateMixin {
  bool animateImage = false;
  late String uniqueHeroTag;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    uniqueHeroTag = widget.movieUrl + widget.movieType.name;
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        _controller.stop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
          animateImage = true;
          _controller.forward();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 100,
          height: 142,
          child: Hero(
            tag: uniqueHeroTag,
            child: CachedNetworkImage(
              imageUrl: widget.movieUrl,
              alignment: Alignment.topCenter,
              fit: BoxFit.fitHeight,
              height: 100,
              width: 142,
            )
                .animate(
                    autoPlay: false,
                    controller: _controller,
                    onComplete: (controller) {
                      if (animateImage) {
                        animateImage = false;
                        widget.onMovieTap(widget.movieId);
                      }
                    })
                .scaleXY(begin: 1.0, end: 1.1, duration: 600.ms)
                .then(delay: 600.ms)
                .scaleXY(begin: 1.1, end: 1.0, duration: 600.ms),
          ),
        ),
      ),
    );
  }
}
