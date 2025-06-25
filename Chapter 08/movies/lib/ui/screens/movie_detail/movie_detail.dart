import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movies/providers.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/ui/screens/movie_detail/movie_overview.dart';
import 'package:movies/ui/theme/theme.dart';
import 'package:movies/ui/widgets/horiz_cast.dart';
import 'package:movies/ui/screens/movie_detail/button_row.dart';
import 'package:movies/ui/screens/movie_detail/detail_image.dart';
import 'package:movies/ui/screens/movie_detail/genre_row.dart';
import 'package:movies/ui/screens/movie_detail/trailer.dart';

@RoutePage(name: 'MovieDetailRoute')
class MovieDetail extends ConsumerStatefulWidget {
  final int movieId;

  const MovieDetail(@PathParam('movieId') this.movieId, {super.key});

  @override
  ConsumerState<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends ConsumerState<MovieDetail> {
  final favoriteNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final genres = ref.read(genresProvider);
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
                      Stack(children: [DetailImage()]),
                      GenreRow(genres: genres),
                      const MovieOverview(
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
                        movieVideos: const ['https://img.youtube.com/vi/U2Qp5pL3ovA/hqdefault.jpg'],
                        onVideoTap: (video) {
                          context.router
                              .push(VideoPageRoute(movieVideo: 'U2Qp5pL3ovA'));
                        },
                      ),

                    ]
                    ),
                  ),
                  const HorizontalCast(castList: ['', '']),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
