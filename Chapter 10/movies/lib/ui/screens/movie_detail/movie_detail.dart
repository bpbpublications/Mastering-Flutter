import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/movie.dart';
import '../../../providers.dart';
import '../../../router/app_routes.dart';
import '../../movie_viewmodel.dart';
import '../../theme/theme.dart';
import '../../widgets/horiz_cast.dart';
import '../../widgets/not_ready.dart';
import '../genres/genre_section.dart';
import 'button_row.dart';
import 'detail_image.dart';
import 'genre_row.dart';
import 'movie_overview.dart';
import 'trailer.dart';

@RoutePage(name: 'MovieDetailRoute')
class MovieDetail extends ConsumerStatefulWidget {
  final int movieId;

  const MovieDetail(@PathParam('movieId') this.movieId, {super.key});

  @override
  ConsumerState<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends ConsumerState<MovieDetail> {
  final favoriteNotifier = ValueNotifier<bool>(false);
  late MovieViewModel movieViewModel;
  List<GenreState> genreStates = [];
  late Movie currentMovie;

  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        currentMovie = movieViewModel.findMovieById(widget.movieId);
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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: screenBackground,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              context.router.maybePopTop();
            },
          ),
          centerTitle: false,
          title:
              Text('Back', style: Theme.of(context).textTheme.headlineMedium),
        ),
        body: Container(
          color: screenBackground,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomScrollView(slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Stack(children: [DetailImage(movieUrl: currentMovie.image)]),
                      GenreRow(genres: genreStates),
                      MovieOverview(
                          details:
                              'Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.'),
                      ValueListenableBuilder<bool>(
                        valueListenable: favoriteNotifier,
                        builder:
                            (BuildContext context, bool value, Widget? child) {
                          return ButtonRow(
                            favoriteSelected: favoriteNotifier.value,
                            onFavoriteSelected: () async {
                              if (favoriteNotifier.value) {
                                favoriteNotifier.value = false;
                              } else {
                                favoriteNotifier.value = true;
                              }
                            },
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, bottom: 8),
                        child: Text('Trailers', style: Theme.of(context).textTheme.headlineLarge),
                      ),
                      Trailer(
                        movieVideos: ['https://img.youtube.com/vi/U2Qp5pL3ovA/hqdefault.jpg'],
                        onVideoTap: (video) {
                          context.router
                              .push(VideoPageRoute(movieVideo: 'U2Qp5pL3ovA'));
                        },
                      ),

                    ]
                    ),
                  ),
                  HorizontalCast(castList: ['', '']),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
