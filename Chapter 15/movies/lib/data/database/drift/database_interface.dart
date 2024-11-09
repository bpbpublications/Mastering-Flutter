import 'package:movies/data/database/models/database_models.dart';

abstract class IDatabase {
  Future deleteDatabase();

  Future<List<DBMovieGenre>> getGenres();

  Future saveGenres(List<DBMovieGenre> genres);

  Future<DBConfiguration?> getMovieConfiguration();

  Future<DBConfiguration?> getMovieConfigurationById(int id);

  Future saveMovieConfiguration(DBConfiguration configuration);

  Future saveFavorite(DBFavorite favorite);

  Future<bool> removeFavorite(int id);

  Future<List<DBFavorite>> getFavorites();

  Stream<List<DBFavorite>> streamFavorites();
}
