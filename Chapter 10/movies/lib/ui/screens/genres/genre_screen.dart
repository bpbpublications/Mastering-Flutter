import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/router/app_routes.dart';

import '../../../data/models/movie.dart';
import '../../../providers.dart';
import '../../movie_viewmodel.dart';
import '../../theme/theme.dart';
import '../../widgets/not_ready.dart';
import '../../widgets/sliver_divider.dart';
import '../../widgets/vert_movie_list.dart';
import 'genre_search_row.dart';
import 'genre_section.dart';
import 'sort_picker.dart';

@RoutePage(name: 'GenreRoute')
class GenreScreen extends ConsumerStatefulWidget {
  const GenreScreen({super.key});

  @override
  ConsumerState<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends ConsumerState<GenreScreen> {
  final expandedNotifier = ValueNotifier<bool>(false);
  late MovieViewModel movieViewModel;
  List<GenreState> genreStates = [];
  List<Movie> currentMovieList = [];

  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        buildGenreState();
        return buildScreen();
      },
    );
  }

  void buildGenreState() {
    for (final genre in movieViewModel.movieGenres) {
      genreStates.add(GenreState(genre: genre, isSelected: false));
    }
  }


  Widget buildScreen() {
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
                          genreStates: genreStates,
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
                    movies: currentMovieList,
                    onMovieTap: (movieId) {
                      context.router.push(MovieDetailRoute(movieId: movieId));
                    },
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
