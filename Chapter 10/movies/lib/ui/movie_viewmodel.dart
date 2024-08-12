
import '../data/models/favorite.dart';
import '../data/models/movie.dart';

class MovieViewModel {
  late List<String> movieGenres;
  Stream<List<Favorite>>? favoriteStream = null;
  List<Favorite>? favoriteList = null;
  List<Movie> trendingMovies = [];
  List<Movie> topRatedMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> nowPlayingMovies = [];
  List<Movie> allMovies = [];

  Future setup() async {
    await Future.wait([setupConfiguration(), setupGenres(), loadMovies()]);
  }

  Future setupConfiguration() async {}

  Future setupGenres() async {
    movieGenres = [
      'Action',
      'Adventure',
      'Crime',
      'Mystery',
      'War',
      'Comedy',
      'Romance',
      'History',
      'Music',
      'Drama',
      'Thriller',
      'Family',
      'Horror',
      'Western',
      'Science Fiction',
      'Animation',
      'Documentation',
      'TV Movie',
      'Fantasy',
    ];
  }

  Future loadMovies() async {
    allMovies = [
      Movie(
          movieId: 1,
          image:
          'http://image.tmdb.org/t/p/w780/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 2,
          image:
          'http://image.tmdb.org/t/p/w780/gKkl37BQuKTanygYQG1pyYgLVgf.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 3,
          image:
          'http://image.tmdb.org/t/p/w780/4xJd3uwtL1vCuZgEfEc8JXI9Uyx.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 4,
          image:
          'http://image.tmdb.org/t/p/w780/uuA01PTtPombRPvL9dvsBqOBJWm.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 5,
          image:
          'http://image.tmdb.org/t/p/w780/H6vke7zGiuLsz4v4RPeReb9rsv.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 6,
          image:
          'http://image.tmdb.org/t/p/w780/e1J2oNzSBdou01sUvriVuoYp0pJ.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 7,
          image:
          'http://image.tmdb.org/t/p/w780/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 8,
          image:
          'http://image.tmdb.org/t/p/w780/pKaA8VvfkNfEMUPMiiuL5qSPQYy.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 9,
          image:
          'http://image.tmdb.org/t/p/w780/zK2sFxZcelHJRPVr242rxy5VK4T.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 10,
          image:
          'http://image.tmdb.org/t/p/w780/7qxG0zyt29BI0IzFDfsps62kbQi.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 11,
          image:
          'http://image.tmdb.org/t/p/w780/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 12,
          image:
          'http://image.tmdb.org/t/p/w780/zDi2U7WYkdIoGYHcYbM9X5yReVD.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 13,
          image:
          'http://image.tmdb.org/t/p/w780/cxevDYdeFkiixRShbObdwAHBZry.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 14,
          image:
          'http://image.tmdb.org/t/p/w780/uXUs1fwSuE06LgYETw2mi4JxQvc.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 15,
          image:
          'http://image.tmdb.org/t/p/w780/fdZpvODTX5wwkD0ikZNaClE4AoW.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 16,
          image:
          'http://image.tmdb.org/t/p/w780/d5NXSklXo0qyIYkgV94XAgMIckC.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 17,
          image:
          'http://image.tmdb.org/t/p/w780/sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 18,
          image:
          'http://image.tmdb.org/t/p/w780/sHJ2OIgpcpSmhqXkuSWxZ3nwg1S.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 19,
          image:
          'http://image.tmdb.org/t/p/w780/upKD8UbH8vQ798aMWgwMxV8t4yk.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
      Movie(
          movieId: 20,
          image:
          'http://image.tmdb.org/t/p/w780/vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg',
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
    ];
  }

  Stream<List<Favorite>> streamFavorites() {
    if (favoriteList == null) {
      favoriteList = [
        Favorite(
            movieId: 1,
            image:
                'http://image.tmdb.org/t/p/w780/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 2,
            image:
                'http://image.tmdb.org/t/p/w780/gKkl37BQuKTanygYQG1pyYgLVgf.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 3,
            image:
                'http://image.tmdb.org/t/p/w780/4xJd3uwtL1vCuZgEfEc8JXI9Uyx.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 4,
            image:
                'http://image.tmdb.org/t/p/w780/uuA01PTtPombRPvL9dvsBqOBJWm.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 5,
            image:
                'http://image.tmdb.org/t/p/w780/H6vke7zGiuLsz4v4RPeReb9rsv.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
      ];
    }
    favoriteStream = Stream.value(favoriteList!);
    return favoriteStream!;
  }

  void updateFavorite(Favorite favorite) {
    final index = favoriteList!
        .indexWhere((favItem) => favItem.movieId == favorite.movieId);
    if (index != -1) {
      favoriteList![index] = favorite;
    }
  }

  Future<List<Movie>> getTrendingMovies(int page) async {
    if (trendingMovies.isEmpty) {
      trendingMovies = [
        allMovies[0],
        allMovies[2],
        allMovies[4],
        allMovies[6],
        allMovies[8],
        allMovies[10],
        allMovies[12],
      ];
    }
    return trendingMovies;
  }

  Future<List<Movie>> getPopular(int page) async {
    if (popularMovies.isEmpty) {
      popularMovies = [
        allMovies[1],
        allMovies[3],
        allMovies[5],
        allMovies[7],
        allMovies[9],
        allMovies[11],
        allMovies[13],
      ];
    }
    return popularMovies;
  }

  Future<List<Movie>> getTopRated(int page) async {
    if (topRatedMovies.isEmpty) {
      topRatedMovies = [
        allMovies[14],
        allMovies[16],
        allMovies[18],
        allMovies[1],
        allMovies[3],
        allMovies[5],
        allMovies[7],
      ];
    }
    return topRatedMovies;
  }

  Future<List<Movie>> getNowPlaying(int page) async {
    if (nowPlayingMovies.isEmpty) {
      nowPlayingMovies = [
        allMovies[8],
        allMovies[10],
        allMovies[12],
        allMovies[14],
        allMovies[16],
        allMovies[18],
        allMovies[1],
      ];
    }
    return nowPlayingMovies;
  }


  Movie findMovieById(int movieId) {
    return allMovies.firstWhere((movie) => movie.movieId == movieId);
  }
}
