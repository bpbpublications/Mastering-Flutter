import 'package:lumberdash/lumberdash.dart';
import 'package:movies/data/database/models/favorite.dart';
import 'package:movies/data/models/models.dart';
import 'package:movies/network/movie_api_service.dart';
import 'package:movies/data/sources/movie_source.dart';

class NetworkMovieSource implements MovieSource {
  final MovieAPIService _movieAPIService;

  NetworkMovieSource(this._movieAPIService);

  @override
  Future<List<Genre>> getGenres() async {
    final response = await _movieAPIService.getGenres();
    if (response.statusCode == 200) {
      return Genres.fromJson(response.data).genres;
    } else {
      logError('Failed to load genres with error ${response.statusCode} and message ${response.statusMessage}');
      return [];
    }
  }

  @override
  Future<MovieResponse?> getTrending([int page = 1]) async {
    final response = await _movieAPIService.getTrending(page);
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      logError('Failed to load trending movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieResponse?> getNowPlaying([int page = 1]) async {
    final response = await _movieAPIService.getNowPlaying(page);
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      logError('Failed to load now playing movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieResponse?> getTopRated([int page = 1]) async {
    final response = await _movieAPIService.getTopRated(page);
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      logError('Failed to load top rated movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieResponse?> getPopular([int page = 1]) async {
    final response = await _movieAPIService.getPopular(page);
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      logError('Failed to load popular movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieConfiguration?> getMovieConfiguration() async {
    final response = await _movieAPIService.getMovieConfiguration();
    if (response.statusCode == 200) {
      return MovieConfiguration.fromJson(response.data);
    } else {
      logError('Failed to load movie configuration with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieCredits?> getMovieCredits(int movieId) async {
    final response = await _movieAPIService.getMovieCredits(movieId);
    if (response.statusCode == 200) {
      return MovieCredits.fromJson(response.data);
    } else {
      logError('Failed to load movie credits with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieDetails?> getMovieDetails(int movieId) async {
    final response = await _movieAPIService.getMovieDetails(movieId);
    if (response.statusCode == 200) {
      try {
        return MovieDetails.fromJson(response.data);
      } catch (e) {
        logError('Failed to parse movie details with error $e');
        return null;
      }
    } else {
      logError('Failed to load movie details with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieVideos?> getMovieVideos(int movieId) async {
    final response = await _movieAPIService.getMovieVideos(movieId);
    if (response.statusCode == 200) {
      return MovieVideos.fromJson(response.data);
    } else {
      logError('Failed to load movie details with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieResponse?> searchMovies(String query, [int page = 1]) async {
    final response = await _movieAPIService.searchMovies(query, page);
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      logError('searchMovies failed movies with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<MovieResponse?> searchMoviesByGenre(String genre, [int page = 1]) async {
    final response = await _movieAPIService.searchMoviesByGenre(genre, page);
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data);
    } else {
      logError('searchMoviesByGenre failed with error ${response.statusCode} and message ${response.statusMessage}');
      return null;
    }
  }

  @override
  Future<int> saveFavorite(MovieDetails movieDetails) async {
    return 0;
  }

  @override
  Future<bool> removeFavorite(int id) async {
    return false;
  }

  @override
  Future<List<DBFavorite>> getFavorites() async {
    return <DBFavorite>[];
  }

  @override
  Stream<List<DBFavorite>> streamFavorites() {
    return Stream.value(<DBFavorite>[]);
  }
}