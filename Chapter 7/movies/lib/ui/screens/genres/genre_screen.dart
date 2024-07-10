import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers.dart';

import '../../theme/theme.dart';
import '../../widgets/sliver_divider.dart';
import '../../widgets/vert_movie_list.dart';
import 'genre_search_row.dart';
import 'genre_section.dart';
import 'sort_picker.dart';

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
      GenreState(genre: 'War', isSelected: false),
      GenreState(genre: 'Comedy', isSelected: false),
      GenreState(genre: 'Romance', isSelected: false),
      GenreState(genre: 'History', isSelected: false),
      GenreState(genre: 'Music', isSelected: false),
      GenreState(genre: 'Drama', isSelected: false),
      GenreState(genre: 'Thriller', isSelected: false),
      GenreState(genre: 'Family', isSelected: false),
      GenreState(genre: 'Horror', isSelected: false),
      GenreState(genre: 'Western', isSelected: false),
      GenreState(genre: 'Science Fiction', isSelected: false),
      GenreState(genre: 'Animation', isSelected: false),
      GenreState(genre: 'Documentation', isSelected: false),
      GenreState(genre: 'TV Movie', isSelected: false),
      GenreState(genre: 'Fantasy', isSelected: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final images = ref.read(movieImagesProvider);
    return SafeArea(
      child: Container(
        color: screenBackground,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16, 16.0, 0.0, 24.0),
                          child: Text('Find a Movie',
                              style: Theme.of(context).textTheme.titleLarge),
                        ),
                        GenreSearchRow((searchString) {}),
                      ],
                    ),
                  ),
                  ValueListenableBuilder<bool>(
                      valueListenable: expandedNotifier,
                      builder:
                          (BuildContext context, bool value, Widget? child) {
                        return GenreSection(
                          genreStates: genres,
                          isExpanded: value,
                          onGenresExpanded: (expanded) {
                            expandedNotifier.value = expanded;
                          },
                          onGenresSelected: (List<GenreState> states) {},
                        );
                      }),
                  const SliverDivider(),
                  SortPicker(useSliver: true, onSortSelected: (sorting) {}),
                  VerticalMovieList(
                    movies: images,
                    onMovieTap: (movieId) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
