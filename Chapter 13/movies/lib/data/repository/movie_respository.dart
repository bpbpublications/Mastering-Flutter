import 'package:lumberdash/lumberdash.dart';
import 'package:movies/data/database/models/favorite.dart';

import 'package:movies/data/database/drift/database_interface.dart';
import 'package:movies/data/database/model_converter.dart';
import 'package:movies/data/models/models.dart';
import 'package:movies/data/sources/movie_source.dart';

class MovieRepository implements MovieSource {
  final MovieSource _movieSource;
  final IDatabase? _database;

  MovieRepository(this._movieSource, this._database);

  @override
  Future<List<Genre>> getGenres() async {
    try {
      final dbMovieGenres = await _database?.getGenres();
      if (dbMovieGenres?.isEmpty == true) {
        final genres = await _movieSource.getGenres();
        await _database?.saveGenres(movieGenreToDatabaseGenre(genres));
        return genres;
      }
      if (_database == null) {
        return [];
      }
      return databaseGenreToGenre(dbMovieGenres!);
    } catch (e) {
      logMessage('getGenres: ${e.toString()}');
      logError(e);
      return [];
    }
  }

  @override
  Future<MovieResponse?> getTrending(int page) async {
    try {
      return _movieSource.getTrending(page);
    } catch (e) {
      logMessage('getTrending: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieResponse?> getNowPlaying(int page) async {
    try {
      return _movieSource.getNowPlaying(page);
    } catch (e) {
      logMessage('getNowPlaying: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieResponse?> getTopRated(int page) async {
    try {
      return _movieSource.getTopRated(page);
    } catch (e) {
      logMessage('getTopRated: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieResponse?> getPopular(int page) async {
    try {
      return _movieSource.getPopular(page);
    } catch (e) {
      logMessage('getPopular: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieConfiguration?> getMovieConfiguration() async {
    try {
      final dbMovieConfiguration = await _database?.getMovieConfiguration();
      if (dbMovieConfiguration == null) {
        final movieConfiguration = await _movieSource.getMovieConfiguration();
        if (movieConfiguration == null) {
          return null;
        }
        final dbConfiguration =
            movieConfigurationToDbConfiguration(movieConfiguration);
        await _database?.saveMovieConfiguration(dbConfiguration!);
        return movieConfiguration;
      }
      return databaseMovieConfigurationToMovieConfiguration(
          dbMovieConfiguration);
    } catch (e) {
      logMessage('getMovieConfiguration: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieCredits?> getMovieCredits(int movieId) async {
    try {
      return _movieSource.getMovieCredits(movieId);
    } catch (e) {
      logMessage('getMovieCredits: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieDetails?> getMovieDetails(int movieId) async {
    try {
      return _movieSource.getMovieDetails(movieId);
    } catch (e) {
      logMessage('getMovieDetails: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieVideos?> getMovieVideos(int movieId) async {
    try {
      return _movieSource.getMovieVideos(movieId);
    } catch (e) {
      logMessage('getMovieVideos: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieResponse?> searchMovies(String query, int page) async {
    try {
      return _movieSource.searchMovies(query, page);
    } catch (e) {
      logMessage('searchMovies: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future<MovieResponse?> searchMoviesByGenre(String genre, int page) async {
    try {
      return _movieSource.searchMoviesByGenre(genre, page);
    } catch (e) {
      logMessage('searchMoviesByGenre: ${e.toString()}');
      logError(e);
    }
    return null;
  }

  @override
  Future saveFavorite(MovieDetails movieDetails) async {
    if (_database == null) {
      return;
    }
    try {
      final favorite = DBFavorite(
          id: movieDetails.id,
          movieId: movieDetails.id,
          backdropPath: movieDetails.backdropPath,
          posterPath: movieDetails.posterPath,
          favorite: true,
          popularity: movieDetails.popularity,
          releaseDate: movieDetails.releaseDate,
          title: movieDetails.title,
          overview: movieDetails.overview);
      _database.saveFavorite(favorite);
    } catch (e) {
      logMessage('saveFavorite: ${e.toString()}');
      logError(e);
    }
  }

  @override
  Future<bool> removeFavorite(int id) async {
    if (_database == null) {
      return false;
    }
    try {
      return _database.removeFavorite(id);
    } catch (e) {
      logMessage('removeFavorite: ${e.toString()}');
      logError(e);
    }
    return false;
  }

  @override
  Future<List<DBFavorite>> getFavorites() async {
    if (_database == null) {
      return [];
    }
    try {
      return _database.getFavorites();
    } catch (e) {
      logMessage('getFavorites: ${e.toString()}');
      logError(e);
    }
    return [];
  }

  @override
  Stream<List<DBFavorite>> streamFavorites() {
    if (_database == null) {
      return Stream.value(<DBFavorite>[]);
    }
    return _database.streamFavorites();
  }
}
