import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movie_data/src/data/database/database_interface.dart';
import 'package:movie_data/src/data/database/models/configuration.dart';
import 'package:movie_data/src/data/database/models/favorite.dart';
import 'package:movie_data/src/data/database/models/genre.dart';


const favorites = 'favorites';
const genres = 'genres';
const configuration = 'configuration';
const images = 'images';

class FirebaseDatabase implements IDatabase {
  final firebase = FirebaseFirestore.instance;
  final favoritesCollection = FirebaseFirestore.instance.collection(favorites);
  final genresCollection = FirebaseFirestore.instance.collection(genres);
  final configurationCollection =
      FirebaseFirestore.instance.collection(configuration);
  final imagesCollection = FirebaseFirestore.instance.collection(images);
  final FirebaseOptions options;

  FirebaseDatabase(this.options);

  @override
  Future deleteDatabase() {
    return Future.value(null);
  }

  @override
  Future<List<DBFavorite>> getFavorites() async {
    final favorites = <DBFavorite>[];
    final querySnapshot = await favoritesCollection.get();
    for (final doc in querySnapshot.docs) {
      var favorite = DBFavorite.fromJson(doc.data());
      favorite = favorite.copyWith(id: int.tryParse(doc.id) ?? 0);
      favorites.add(favorite);
    }
    return favorites;
  }

  @override
  Stream<List<DBFavorite>> streamFavorites() {
    return favoritesCollection
        .snapshots()
        .map((snapShot) => snapShot.docs
            .map((doc) => DBFavorite.fromJson(doc.data()))
            .toList())
        .asBroadcastStream();
  }

  @override
  Future<bool> removeFavorite(int id) async {
    final ref = await favoritesCollection.where('id', isEqualTo: id).get();
    if (ref.docs.isNotEmpty) {
      ref.docs[0].reference.delete();
    }
    return Future.value(true);
  }

  @override
  Future saveFavorite(DBFavorite favorite) async {
    final ref = await favoritesCollection.add(favorite.toJson());
    return Future.value(ref.id);
  }

  @override
  Future<List<DBMovieGenre>> getGenres() async {
    final genres = <DBMovieGenre>[];
    final querySnapshot = await genresCollection.get();
    for (final doc in querySnapshot.docs) {
      var genre = DBMovieGenre.fromJson(doc.data());
      genre = genre.copyWith(id: int.tryParse(doc.id) ?? 0);
      genres.add(genre);
    }
    return genres;
  }

  @override
  Future saveGenres(List<DBMovieGenre> genres) {
    for (final genre in genres) {
      genresCollection.add(genre.toJson());
    }
    return Future.value(null);
  }


  @override
  Future<DBConfiguration?> getMovieConfiguration() async {
    final querySnapshot = await configurationCollection.get();
    for (final doc in querySnapshot.docs) {
      var configuration = DBConfiguration.fromJson(doc.data());
      configuration = configuration.copyWith(id: int.tryParse(doc.id) ?? 0);
      final imagesSnapshot = await imagesCollection.get();
      if (imagesSnapshot.docs.isNotEmpty) {
        final images =
            DBConfigurationImages.fromJson(imagesSnapshot.docs[0].data());
        configuration = configuration.copyWith(images: images);
      }
      return configuration;
    }
    return Future.value(null);
  }

  @override
  Future<DBConfiguration?> getMovieConfigurationById(int id) async {
    final docRef = await configurationCollection.doc(id.toString()).get();
    final data = docRef.data();
    if (data != null) {
      return DBConfiguration.fromJson(data);
    }
    return null;
  }

  @override
  Future saveMovieConfiguration(DBConfiguration configuration) {
    final configJson = configuration.toJson();
    print(configJson);
    configurationCollection.add(configJson);
    return Future.value(null);
  }
}
