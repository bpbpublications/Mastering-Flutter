import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/data/database/drift/database_interface.dart';
import 'package:movies/data/database/firebase/firebase_database.dart';
import 'package:movies/data/repository/movie_repository.dart';
import 'package:movies/data/sources/movie_source.dart';
import 'package:movies/data/sources/network_movie_source.dart';
import 'package:movies/ui/menus.dart';
import 'package:movies/utils/prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:movies/network/movie_api_service.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/ui/movie_viewmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'providers.g.dart';

final heroTagProvider = StateProvider<String>((ref) {
  return '';
});

final searchTextProvider = StateProvider<String>((ref) {
  return '';
});

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});


@Riverpod(keepAlive: true)
MenuManager menuManager(Ref ref) => MenuManager(ref);

@Riverpod(keepAlive: true)
EventBus eventBus(Ref ref) => EventBus();

@Riverpod(keepAlive: true)
Future<MovieAPIService> movieAPIService(Ref ref) async {
  final service = MovieAPIService();
  await service.init();
  return service;
}


@Riverpod(keepAlive: true)
Future<MovieSource> networkMovieSource(Ref ref) async {
  final service = await ref.read(movieAPIServiceProvider.future);
  return NetworkMovieSource(service);
}

@Riverpod(keepAlive: true)
Future<MovieSource> movieRepository(Ref ref) async {
  final database = ref.watch(databaseProvider);
  final serviceFuture = ref.watch(networkMovieSourceProvider.future);
  return MovieRepository(
      await serviceFuture, database);
}

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final model = MovieViewModel(await repositoryFuture);
  await model.setup();
  return model;
}

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPrefs(Ref ref) =>
    SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
Future<Prefs> prefs(Ref ref) async {
  final sharedPrefs = await ref.read(sharedPrefsProvider.future);
  return Prefs(sharedPrefs);
}

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter();

@Riverpod(keepAlive: true)
IDatabase database(Ref ref) {
  // Change this to what we want to use
  return ref.watch(firebaseProvider);
}

@Riverpod(keepAlive: true)
IDatabase firebase(Ref ref) => FirebaseDatabase();

