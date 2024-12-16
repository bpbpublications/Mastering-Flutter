import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:movie_data/movie_data.dart';
import 'package:movies/providers.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/ui/widgets/movie_widget.dart';
import 'package:movies/ui/theme/theme.dart';
import 'package:movies/ui/widgets/movie_row.dart';
import 'package:movies/ui/widgets/not_ready.dart';
import 'package:movies/ui/movie_viewmodel.dart';

const pageCount = 20;
const movieRowHeight = 140;

@RoutePage(name: 'MovieListingRoute')
class MovieListing extends ConsumerStatefulWidget {
  final MovieType movieType;

  const MovieListing(this.movieType, {super.key});

  @override
  ConsumerState<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends ConsumerState<MovieListing> {
  late MovieViewModel movieViewModel;

  bool loading = false;
  int totalPagesAvailable = 0;
  int totalMoviesAvailable = 0;
  int currentPage = 1;
  MovieResponse? currentMovieResponse;
  final PagingController<int, MovieResults> _pagingController =
      PagingController(firstPageKey: 0);
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      loadMovies();
    });
  }

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
      child: FutureBuilder(
        future: loadMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: screenBackground,
              leading: BackButton(
                color: Colors.white,
                onPressed: () {
                  context.router.maybePopTop();
                },
              ),
              centerTitle: false,
              title: Text('Back', style: Theme.of(context).textTheme.headlineMedium),
            ),
            body: Container(
              color: screenBackground,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16.0, 0.0, 24.0),
                    child: Text(getTitle(), style: Theme.of(context).textTheme.titleLarge),
                  ),
                  const Divider(),
                  Expanded(
                    child: PagedListView<int, MovieResults>(
                      pagingController: _pagingController,
                      scrollController: _scrollController,
                      builderDelegate: PagedChildBuilderDelegate<MovieResults>(
                        itemBuilder: (context, item, index) => MovieRow(
                            movie: item,
                            movieViewModel: movieViewModel,
                            onMovieTap: (movie) {
                              context.router
                                  .push(MovieDetailRoute(movieId: item.id));
                            },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String getTitle() {
    switch (widget.movieType) {
      case MovieType.trending:
        return 'Trending';
      case MovieType.popular:
        return 'Popular';
      case MovieType.topRated:
        return 'Top Rated';
      case MovieType.nowPlaying:
        return 'Now Playing';
    }
  }

  void onMovieTap(int movieId) {
    context.router.push(MovieDetailRoute(movieId: movieId));
  }

  Future loadMovies() async {
    if (loading) {
      return;
    }
    loading = true;
    if (totalPagesAvailable == 0) {
      currentPage = 1;
    }

    switch (widget.movieType) {
      case MovieType.trending:
        currentMovieResponse =
            await movieViewModel.getTrendingMovies(currentPage);
      case MovieType.popular:
        currentMovieResponse = await movieViewModel.getPopular(currentPage);
      case MovieType.topRated:
        currentMovieResponse = await movieViewModel.getTopRated(currentPage);
      case MovieType.nowPlaying:
        currentMovieResponse = await movieViewModel.getNowPlaying(currentPage);
    }
    if (currentMovieResponse != null) {
      totalPagesAvailable = currentMovieResponse!.totalPages;
      totalMoviesAvailable = currentMovieResponse!.totalResults;
      currentPage++;
      final isLastPage =
          (_pagingController.itemList?.length ?? 0 + pageCount) >=
              totalMoviesAvailable;
      if (isLastPage) {
        _pagingController.appendLastPage(currentMovieResponse!.results);
      } else {
        _pagingController.appendPage(
            currentMovieResponse!.results, currentPage);
      }
    }
    loading = false;
  }
}
