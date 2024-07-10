import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/providers.dart';
import 'package:movies/ui/screens/home/title_row.dart';

import '../../../router/app_routes.dart';
import '../../theme/theme.dart';
import 'home_screen_image.dart';
import 'horiz_movies.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final images = ref.read(movieImagesProvider);
    return
      SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: screenBackground,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 24),
                child: Align(
                    alignment: Alignment.center,
                    child: Text('Now Playing', style: largeTitle)),
              ),
              HomeScreenImage(onMovieTap: (id) {
                context.router.push(MovieDetailRoute(movieId: id));
              }),
              TitleRow(
                text: 'Trending',
                onMoreClicked: () {
                },
              ),
              HorizontalMovies(movies: images,),
              TitleRow(
                text: 'Popular',
                onMoreClicked: () {
                },
              ),
              HorizontalMovies(movies: images,),
              TitleRow(
                text: 'Top Rated',
                onMoreClicked: () {
                },
              ),
              HorizontalMovies(movies: images,),

            ],
          ),
        ),
      ),
    );
  }
}
