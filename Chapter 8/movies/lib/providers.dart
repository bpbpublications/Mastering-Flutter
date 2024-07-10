import 'package:movies/ui/screens/genres/genre_section.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router/app_routes.dart';

part 'providers.g.dart';

@riverpod
List<String> movieImages(MovieImagesRef ref) => [
  'http://image.tmdb.org/t/p/w780/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
  'http://image.tmdb.org/t/p/w780/gKkl37BQuKTanygYQG1pyYgLVgf.jpg',
  'http://image.tmdb.org/t/p/w780/4xJd3uwtL1vCuZgEfEc8JXI9Uyx.jpg',
  'http://image.tmdb.org/t/p/w780/uuA01PTtPombRPvL9dvsBqOBJWm.jpg',
  'http://image.tmdb.org/t/p/w780/H6vke7zGiuLsz4v4RPeReb9rsv.jpg',
  'http://image.tmdb.org/t/p/w780/e1J2oNzSBdou01sUvriVuoYp0pJ.jpg',
  'http://image.tmdb.org/t/p/w780/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
  'http://image.tmdb.org/t/p/w780/pKaA8VvfkNfEMUPMiiuL5qSPQYy.jpg',
  'http://image.tmdb.org/t/p/w780/zK2sFxZcelHJRPVr242rxy5VK4T.jpg',
  'http://image.tmdb.org/t/p/w780/7qxG0zyt29BI0IzFDfsps62kbQi.jpg',
  'http://image.tmdb.org/t/p/w780/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
  'http://image.tmdb.org/t/p/w780/zDi2U7WYkdIoGYHcYbM9X5yReVD.jpg',
  'http://image.tmdb.org/t/p/w780/cxevDYdeFkiixRShbObdwAHBZry.jpg',
  'http://image.tmdb.org/t/p/w780/uXUs1fwSuE06LgYETw2mi4JxQvc.jpg',
  'http://image.tmdb.org/t/p/w780/fdZpvODTX5wwkD0ikZNaClE4AoW.jpg',
  'http://image.tmdb.org/t/p/w780/d5NXSklXo0qyIYkgV94XAgMIckC.jpg',
  'http://image.tmdb.org/t/p/w780/sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg',
  'http://image.tmdb.org/t/p/w780/sHJ2OIgpcpSmhqXkuSWxZ3nwg1S.jpg',
  'http://image.tmdb.org/t/p/w780/upKD8UbH8vQ798aMWgwMxV8t4yk.jpg',
  'http://image.tmdb.org/t/p/w780/vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg',
];

@riverpod
List<GenreState> genres(GenresRef ref) =>  [
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

@riverpod
AppRouter appRouter(AppRouterRef ref) => AppRouter();

