import 'package:drift/drift.dart';
import 'package:movies/data/database/models/database_models.dart';
import 'package:movies/data/database/database_interface.dart';
import 'package:movies/data/database/drift/movie_database.dart';

class DriftDatabase implements IDatabase {
  final MovieDatabase movieDatabase = MovieDatabase();

  DriftDatabase();

  @override
  Future deleteDatabase() async {}

  @override
  Future<List<DBFavorite>> getFavorites() async {
    final favorites = await movieDatabase.managers.driftFavorite.get();
    final dbFavorites = <DBFavorite>[];
    for (final favorite in favorites) {
      dbFavorites.add(DBFavorite(
          id: favorite.id,
          movieId: favorite.movieId,
          backdropPath: favorite.backdropPath,
          posterPath: favorite.posterPath,
          favorite: favorite.favorite,
          popularity: favorite.popularity,
          releaseDate: favorite.releaseDate,
          title: favorite.title,
          overview: favorite.overview));
    }
    return dbFavorites;
  }

  @override
  Future<List<DBMovieGenre>> getGenres() async {
    final genres = await movieDatabase.managers.driftGenre.get();
    final dbGenres = <DBMovieGenre>[];
    for (final genre in genres) {
      dbGenres.add(DBMovieGenre(
        id: genre.id,
        remoteId: genre.remoteId,
        name: genre.name,
      ));
    }
    return dbGenres;
  }

  @override
  Future<DBConfiguration?> getMovieConfiguration() async {
    final images = await movieDatabase.managers.driftConfigurationImages.get();
    final dbImages = <DBConfigurationImages>[];
    for (final genre in images) {
      dbImages.add(DBConfigurationImages(
        baseUrl: genre.baseUrl,
        secureBaseUrl: genre.secureBaseUrl,
        backdropSizes: genre.backdropSizes.split(','),
        logoSizes: genre.logoSizes.split(','),
        posterSizes: genre.posterSizes.split(','),
        profileSizes: genre.profileSizes.split(','),
        stillSizes: genre.stillSizes.split(','),
      ));
    }
    if (dbImages.isEmpty) {
      return null;
    }
    // Don't care about changeKeys
    return DBConfiguration(id: 1, images: dbImages[0], changeKeys: []);
  }

  @override
  Future<DBConfiguration?> getMovieConfigurationById(int id) async {
    return getMovieConfiguration();
  }

  @override
  Future<bool> removeFavorite(int id) async {
    return await movieDatabase.driftFavorite
        .deleteWhere((table) => table.id.equals(id)) !=
        -1;
  }

  @override
  Future saveFavorite(DBFavorite favorite) async {
    movieDatabase.managers.driftFavorite.create((x) =>
        DriftFavoriteData(
          id: favorite.id,
          movieId: favorite.movieId,
          backdropPath: favorite.backdropPath,
          posterPath: favorite.posterPath,
          favorite: favorite.favorite,
          popularity: favorite.popularity,
          releaseDate: favorite.releaseDate,
          title: favorite.title,
          overview: favorite.overview,
        ));
  }

  @override
  Future saveGenres(List<DBMovieGenre> genres) async {
    for (final genre in genres) {
      movieDatabase.managers.driftGenre.create((x) =>
          DriftGenreData(
              id: genre.id, remoteId: genre.remoteId, name: genre.name));
    }
  }

  @override
  Future saveMovieConfiguration(DBConfiguration configuration) async {
    movieDatabase.managers.driftConfigurationImages
        .create((x) =>
        DriftConfigurationImagesCompanion.insert(
          baseUrl: configuration.images.baseUrl,
          secureBaseUrl: configuration.images.secureBaseUrl,
          backdropSizes: configuration.images.backdropSizes.join(','),
          logoSizes: configuration.images.logoSizes.join(','),
          posterSizes: configuration.images.posterSizes.join(','),
          profileSizes: configuration.images.profileSizes.join(','),
          stillSizes: configuration.images.stillSizes.join(','),
        ));
  }

  @override
  Stream<List<DBFavorite>> streamFavorites() {
    return movieDatabase.managers.driftFavorite.watch().map((dbFavorites) {
      final favorites = <DBFavorite>[];
      for (final favorite in dbFavorites) {
        favorites.add(DBFavorite(id: favorite.id,
            movieId: favorite.movieId,
            backdropPath: favorite.backdropPath,
            posterPath: favorite.posterPath,
            favorite: favorite.favorite,
            popularity: favorite.popularity,
            releaseDate: favorite.releaseDate,
            title: favorite.title,
            overview: favorite.overview));
      }
      return favorites;
    });
  }
}
