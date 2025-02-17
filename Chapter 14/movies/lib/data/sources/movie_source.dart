import 'package:movies/data/database/models/favorite.dart';
import 'package:movies/data/models/models.dart';

abstract class MovieSource {
  Future<List<Genre>> getGenres();

  Future<MovieResponse?> getTrending(int page);

  Future<MovieResponse?> getNowPlaying(int page);

  Future<MovieResponse?> getTopRated(int page);

  Future<MovieResponse?> getPopular(int page);

  Future<MovieResponse?> searchMovies(String query, int page);

  Future<MovieResponse?> searchMoviesByGenre(String genre, int page);

  Future<MovieDetails?> getMovieDetails(int movieId);

  Future<MovieVideos?> getMovieVideos(int movieId);

  Future<MovieConfiguration?> getMovieConfiguration();

  Future<MovieCredits?> getMovieCredits(int movieId);

  Future saveFavorite(MovieDetails movieDetails);

  Future<bool> removeFavorite(int id);

  Future<List<DBFavorite>> getFavorites();

  Stream<List<DBFavorite>> streamFavorites();

}