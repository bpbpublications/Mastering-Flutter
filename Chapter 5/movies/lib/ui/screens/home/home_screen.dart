import 'package:flutter/material.dart';
import 'package:movies/ui/screens/home/title_row.dart';

import '../../theme/theme.dart';
import 'home_screen_image.dart';
import 'horiz_movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
              HomeScreenImage(),
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
