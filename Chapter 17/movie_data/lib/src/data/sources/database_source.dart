import 'package:movie_data/src/data/models/models.dart';

import 'package:movie_data/src/data/database/database_interface.dart';
import 'package:movie_data/src/data/database/model_converter.dart';

class DatabaseSource {
  final IDatabase? _database;

  DatabaseSource(this._database);

  Future<List<Genre>> getGenres() async {
    final genres = <Genre>[];
    if (_database == null) {
      return genres;
    }
    final networkGenres = await _database.getGenres();
    genres.addAll(databaseGenreToGenre(networkGenres));
    return genres;
  }

  Future<MovieConfiguration?> movieConfiguration() async {
    if (_database == null) {
      return null;
    }
    return databaseMovieConfigurationToMovieConfiguration(
        await _database.getMovieConfiguration());
  }
}