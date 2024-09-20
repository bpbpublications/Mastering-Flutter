import 'package:lumberdash/lumberdash.dart';
import 'package:movies/data/database/database_interface.dart';
import 'package:movies/data/database/models/favorite.dart';
import 'package:movies/data/models/genre.dart';
import 'package:movies/data/models/movie_configuration.dart';
import 'package:movies/data/models/movie_credits.dart';
import 'package:movies/data/models/movie_details.dart';
import 'package:movies/data/models/movie_response.dart';
import 'package:movies/data/models/movie_results.dart';
import 'package:movies/data/models/movie_videos.dart';
import 'package:movies/network/movie_api_service.dart';
import 'package:movies/utils/utils.dart';

class MovieViewModel {
  final MovieAPIService movieAPIService;
  final IDatabase database;
  MovieConfiguration? movieConfiguration;
  List<Genre>? movieGenres;
  List<MovieResults> trendingMovies = [];
  List<MovieResults> topRatedMovies = [];
  List<MovieResults> popularMovies = [];
  List<MovieResults> nowPlayingMovies = [];

  MovieViewModel({required this.movieAPIService, required this.database});

  Future setup() async {
    await Future.wait([setupConfiguration(), setupGenres()]);
  }

  Future setupConfiguration() async {
    final response = await movieAPIService.getMovieConfiguration();
    if (response.statusCode == 200) {
      movieConfiguration = MovieConfiguration.fromJson(response.data);
    } else {
      logError(
          'Failed to load genres with error ${response.statusCode} and message ${response.statusMessage}');
    }
  }

  Future setupGenres() async {
    final response = await movieAPIService.getGenres();
    if (response.statusCode == 200) {
      movieGenres = Genres.fromJson(response.data).genres;
    } else {
      logError(
          'Failed to load genres with error ${response.statusCode} and message ${response.statusMessage}');
    }
  }

  String? getImageUrl(ImageSize size, String? file) {
    if (file == null || movieConfiguration == null) {
      logMessage('movieConfiguration is null for getImageUrl file: $file');
      return null;
    }
    return getSizedImageUrl(size, movieConfiguration!, file);
  }

  Future saveFavorite(MovieDetails movieDetails) async {
    database.saveFavorite(DBFavorite(
        id: movieDetails.id,
        movieId: movieDetails.id,
        backdropPath: movieDetails.backdropPath,
        posterPath: movieDetails.posterPath,
        favorite: true,
        popularity: movieDetails.popularity,
        releaseDate: movieDetails.releaseDate,
        title: movieDetails.title,
        overview: movieDetails.overview));
  }

  Future<bool> removeFavorite(int id) async {
    return database.removeFavorite(id);
  }

  Future<List<DBFavorite>> getFavorites() async {
    return database.getFavorites();
  }

  Stream<List<DBFavorite>> streamFavorites() {
    return database.streamFavorites();
  }

  Future<MovieResponse?> getTrendingMovies(int page) async {
    final response = await movieAPIService.getTrending(page);
    if (response.statusCode == 200) {
      var movieResponse = MovieResponse.fromJson(response.data);
      trendingMovies = movieResponse.results;
      return movieResponse;
    } else {
      logError(
          'Failed to load movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieResponse?> getPopular(int page) async {
    final response = await movieAPIService.getPopular(page);
    if (response.statusCode == 200) {
      var movieResponse = MovieResponse.fromJson(response.data);
      popularMovies = movieResponse.results;
      return movieResponse;
    } else {
      logError(
          'Failed to load movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieResponse?> getTopRated(int page) async {
    final response = await movieAPIService.getTopRated(page);
    if (response.statusCode == 200) {
      var movieResponse = MovieResponse.fromJson(response.data);
      topRatedMovies = movieResponse.results;
      return movieResponse;
    } else {
      logError(
          'Failed to load movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieResponse?> getNowPlaying(int page) async {
    final response = await movieAPIService.getNowPlaying(page);
    if (response.statusCode == 200) {
      var movieResponse = MovieResponse.fromJson(response.data);
      nowPlayingMovies = movieResponse.results;
      return movieResponse;
    } else {
      logError(
          'Failed to load movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieDetails?> getMovieDetails(int movieId) async {
    final response = await movieAPIService.getMovieDetails(movieId);
    if (response.statusCode == 200) {
      try {
        return MovieDetails.fromJson(response.data);
      } catch (e) {
        logError('Failed to parse movie details with error $e');
        return null;
      }
    } else {
      logError(
          'Failed to load movie details with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieVideos?> getMovieVideos(int movieId) async {
    final response = await movieAPIService.getMovieVideos(movieId);
    if (response.statusCode == 200) {
      try {
        return MovieVideos.fromJson(response.data);
      } catch (e) {
        logError('Failed to parse movie videos with error $e');
        return null;
      }
    } else {
      logError(
          'Failed to load movie videos with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieCredits?> getMovieCredits(int movieId) async {
    final response = await movieAPIService.getMovieCredits(movieId);
    if (response.statusCode == 200) {
      try {
        return MovieCredits.fromJson(response.data);
      } catch (e) {
        logError('Failed to parse movie credits with error $e');
        return null;
      }
    } else {
      logError(
          'Failed to load movie credits with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieResponse?> searchMoviesByGenre(String genres, int page) async {
    final response = await movieAPIService.searchMoviesByGenre(genres, page);
    if (response.statusCode == 200) {
      var movieResponse = MovieResponse.fromJson(response.data);
      return movieResponse;
    } else {
      logError(
          'Failed to load movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  Future<MovieResponse?> searchMovies(String searchText, int page) async {
    final response = await movieAPIService.searchMovies(searchText, page);
    if (response.statusCode == 200) {
      var movieResponse = MovieResponse.fromJson(response.data);
      return movieResponse;
    } else {
      logError(
          'Failed to load movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }
}
