import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cast_image.dart';

class HorizontalCast extends ConsumerWidget {
  final List<String> castList;

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
          return CastImage(imageUrl: 'http://image.tmdb.org/t/p/w780/BE2sdjpgsa2rNTFa66f7upkaOP.jpg', name: 'Timothée Chalamet');
        }, childCount: castList.length),
      ),
    );
  }
}
