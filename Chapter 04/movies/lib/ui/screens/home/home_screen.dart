import 'package:flutter/material.dart';
import 'package:movies/ui/screens/home/title_row.dart';

import 'package:movies/ui/screens/home/home_screen_image.dart';
import 'package:movies/ui/screens/home/horiz_movies.dart';

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
          color: const Color(0xFF111111),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 16.0, 0, 24),
                child: Align(
                    alignment: Alignment.center,
                    child: Text('Now Playing', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),)),
              ),
              HomeScreenImage(),
              TitleRow(
                text: 'Trending',
                onMoreClicked: () {
                },
              ),
              const HorizontalMovies(movies: images,),
              TitleRow(
                text: 'Popular',
                onMoreClicked: () {
                },
              ),
              const HorizontalMovies(movies: images,),
              TitleRow(
                text: 'Top Rated',
                onMoreClicked: () {
                },
              ),
              const HorizontalMovies(movies: images,),
        
            ],
          ),
        ),
      ),
    );
  }
}
