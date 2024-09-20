import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/data/models/movie_credits.dart';

import 'package:movies/ui/widgets/cast_image.dart';
import 'package:movies/utils/utils.dart';

class HorizontalCast extends ConsumerWidget {
  final List<MovieCast> castList;

  const HorizontalCast({required this.castList, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100.0,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: 100.0),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return CastImage(imageUrl: getImageUrl(ImageSize.small, castList[index].profilePath), name: castList[index].name);
        }, childCount: castList.length),
      ),
    );
  }
}
