import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../genres/genre_section.dart';

class GenreRow extends StatefulWidget {
  final List<GenreState> genres;

  const GenreRow({super.key, required this.genres});

  @override
  State<GenreRow> createState() => _GenreRowState();
}

class _GenreRowState extends State<GenreRow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward(); // Start animation on initialization

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0), // Start offscreen to the right
      end: Offset.zero, // End at the normal position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut, // Use elastic curve for bounce effect
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 24, bottom: 16),
      child: SizedBox(
        height: 34,
        child: SlideTransition(
          position: _offsetAnimation,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.genres
                .map((genre) => Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
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
      ),
    );
  }
}
