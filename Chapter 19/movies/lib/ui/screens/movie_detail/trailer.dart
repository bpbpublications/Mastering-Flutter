import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_data/movie_data.dart';

import 'package:movies/utils/utils.dart';

class Trailer extends ConsumerStatefulWidget {
  final List<MovieVideo>? movieVideos;
  final OnMovieVideoTap onVideoTap;

  const Trailer({this.movieVideos, required this.onVideoTap, super.key});

  @override
  ConsumerState<Trailer> createState() => _TrailerState();
}

class _TrailerState extends ConsumerState<Trailer> {
  @override
  Widget build(BuildContext context) {
    if (widget.movieVideos == null) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          itemExtent: 166,
          scrollDirection: Axis.horizontal,
          itemCount: widget.movieVideos!.length,
          itemBuilder: (context, index) {
            final movieVideo = widget.movieVideos![index];
            return GestureDetector(
              onTap: () {
                widget.onVideoTap(movieVideo);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: SizedBox(
                  width: 166,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CachedNetworkImage(
                        imageUrl: youtubeImageFromId(movieVideo.key),
                        alignment: Alignment.topLeft,
                        fit: BoxFit.fitHeight,
                        height: 98,
                        errorWidget: (_,__,___) => const Placeholder(),
                      ),
                      AutoSizeText(
                        movieVideo.name,
                        style: Theme.of(context).textTheme.labelSmall,
                        maxLines: 1,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
