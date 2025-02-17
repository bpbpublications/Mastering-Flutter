import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movies/providers.dart';
import 'package:movies/ui/theme/theme.dart';
import 'package:movies/ui/widgets/sliver_divider.dart';
import 'package:movies/ui/widgets/vert_movie_list.dart';
import 'package:movies/ui/screens/genres/genre_search_row.dart';
import 'package:movies/ui/screens/genres/genre_section.dart';
import 'package:movies/ui/screens/genres/sort_picker.dart';

class GenreScreen extends ConsumerStatefulWidget {
  const GenreScreen({super.key});

  @override
  ConsumerState<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends ConsumerState<GenreScreen> {
  List<GenreState> genres = [];
  final expandedNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    genres = [
      GenreState(genre: 'Action', isSelected: false),
      GenreState(genre: 'Adventure', isSelected: false),
      GenreState(genre: 'Crime', isSelected: false),
      GenreState(genre: 'Mystery', isSelected: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: screenBackground,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16.0, 0.0, 24.0),
                    child: Text('Find a Movie',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ],
              ),
              GenreSearchRow((searchString) {}),
              ValueListenableBuilder<bool>(
                  valueListenable: expandedNotifier,
                  builder: (BuildContext context, bool value, Widget? child) {
                    return GenreSection(
                      genreStates: genres,
                      isExpanded: value,
                      onGenresExpanded: (expanded) {
                        expandedNotifier.value = expanded;
                      },
                      onGenresSelected: (List<GenreState> states) {},
                    );
                  }),
              const Divider(),
              SortPicker(
                  onSortSelected: (sorting) {
                  }),
              VerticalMovieList(movies: [], onMovieTap: (movieId) {},),

            ]),
      ),
    );
  }
}
