import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../genres/genre_section.dart';

class GenreRow extends StatelessWidget {
  final List<GenreState> genres;

  const GenreRow({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 24, bottom: 16),
      child: SizedBox(
        height: 34,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: genres
              .map((genre) => Container(
            margin: const EdgeInsets.only(right: 8),
            padding:
            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: buttonGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              genre.genre,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}
