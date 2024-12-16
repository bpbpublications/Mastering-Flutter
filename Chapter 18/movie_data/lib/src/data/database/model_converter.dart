import 'package:movie_data/src/data/database/models/configuration.dart';
import 'package:movie_data/src/data/database/models/database_models.dart';
import 'package:movie_data/src/data/models/models.dart';

List<Genre> databaseGenreToGenre(List<DBMovieGenre> databaseGenres) {
  return databaseGenres
      .map((databaseGenre) =>
          Genre(id: databaseGenre.remoteId, name: databaseGenre.name))
      .toList();
}

List<DBMovieGenre> movieGenreToDatabaseGenre(List<Genre> genres) {
  return genres
      .map((genre) =>
      DBMovieGenre(id: genre.id, remoteId: genre.id, name: genre.name))
      .toList();
}

MovieConfiguration? databaseMovieConfigurationToMovieConfiguration(
    DBConfiguration? databaseMovieConfiguration) {
  if (databaseMovieConfiguration == null) {
    return null;
  }
  return MovieConfiguration(
    images: databaseImagesToImages(databaseMovieConfiguration.images),
    changeKeys: databaseMovieConfiguration.changeKeys,
  );
}

DBConfiguration? movieConfigurationToDbConfiguration(
    MovieConfiguration movieConfiguration) {
  final dbConfiguration = DBConfiguration(id: 1, images: imagesToDbImages(movieConfiguration.images),
      changeKeys: [...movieConfiguration.changeKeys]);
  return dbConfiguration;
}

MovieConfigurationImages databaseImagesToImages(DBConfigurationImages databaseImages) {
  return MovieConfigurationImages(
    baseUrl: databaseImages.baseUrl,
    secureBaseUrl: databaseImages.secureBaseUrl,
    backdropSizes: databaseImages.backdropSizes,
    logoSizes: databaseImages.logoSizes,
    posterSizes: databaseImages.posterSizes,
    profileSizes: databaseImages.profileSizes,
    stillSizes: databaseImages.stillSizes,
  );
}

DBConfigurationImages imagesToDbImages(MovieConfigurationImages images) {
  final dbImages = DBConfigurationImages(
    baseUrl: images.baseUrl,
    secureBaseUrl: images.secureBaseUrl,
    backdropSizes: [...images.backdropSizes],
    logoSizes: [...images.logoSizes],
    posterSizes: [...images.posterSizes],
    profileSizes: [...images.profileSizes],
    stillSizes: [...images.stillSizes],
  );
  return dbImages;
}
