import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_data/movie_data.dart';

import 'package:movies/providers.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/utils/utils.dart';
import 'package:movies/ui/movie_viewmodel.dart';
import 'package:movies/ui/theme/theme.dart';
import 'package:movies/ui/widgets/not_ready.dart';
import 'package:movies/ui/widgets/vert_favorite_list.dart';
import 'package:movies/ui/screens/genres/sort_picker.dart';

@RoutePage(name: 'FavoriteRoute')
class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});

  @override
  ConsumerState<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends ConsumerState<FavoriteScreen> {
  late MovieViewModel movieViewModel;
  List<DBFavorite> currentFavorites = [];
  final valueNotifier = ValueNotifier<List<DBFavorite>>([]);
  Sorting selectedSort = Sorting.aToz;

  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        return buildScreen();
      },
    );
  }

  Widget buildScreen() {
    return SafeArea(
      bottom: false,
      child: StreamBuilder<List<DBFavorite>>(
        stream: getFavoriteStream(),
        builder: (context, snapshot) {
          if ((snapshot.connectionState != ConnectionState.active) &&
              (snapshot.connectionState != ConnectionState.done)) {
            return const NotReady();
          }
          return Container(
            color: screenBackground,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                              padding: const EdgeInsets.fromLTRB(
                                  16, 16.0, 0.0, 24.0),
                              child: Text('My Favorites',
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            ),
                          ],
                        ),
                      ),
                      SortPicker(
                          useSliver: true,
                          onSortSelected: (sorting) {
                            selectedSort = sorting;
                            sortMovies();
                          }),
                      VerticalFavoriteList(
                        favorites: snapshot.requireData,
                        movieViewModel: movieViewModel,
                        onMovieTap: (movieId) {
                          context.router
                              .push(MovieDetailRoute(movieId: movieId));
                        },
                        onFavoritesTap: (DBFavorite favorite) {
                          removeFavorite(favorite);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Stream<List<DBFavorite>> getFavoriteStream() {
    return movieViewModel.streamFavorites();
  }

  void sortMovies() {
    if (currentFavorites.isEmpty) {
      return;
    }
    currentFavorites = currentFavorites.sorted((a, b) {
      switch (selectedSort) {
        case Sorting.aToz:
          return a.title.compareTo(b.title);
        case Sorting.zToa:
          return b.title.compareTo(a.title);
        case Sorting.rating:
          return b.popularity.compareTo(a.popularity);
        case Sorting.year:
          return a.releaseDate.compareTo(b.releaseDate);
      }
    });
    valueNotifier.value = currentFavorites;
  }

  Future removeFavorite(DBFavorite favorite) async {
    await movieViewModel.removeFavorite(favorite.id);
    setState(() {});
  }
}
