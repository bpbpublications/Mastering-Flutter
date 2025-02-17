import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/data/database/drift/database_interface.dart';
import 'package:movies/data/database/drift/drift_database.dart';
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
MenuManager menuManager(MenuManagerRef ref) => MenuManager(ref);

@Riverpod(keepAlive: true)
EventBus eventBus(EventBusRef ref) => EventBus();

@Riverpod(keepAlive: true)
Future<MovieAPIService> movieAPIService(MovieAPIServiceRef ref) async {
  final service = MovieAPIService();
  await service.init();
  return service;
}


@Riverpod(keepAlive: true)
Future<MovieSource> networkMovieSource(NetworkMovieSourceRef ref) async {
  final service = await ref.read(movieAPIServiceProvider.future);
  return NetworkMovieSource(service);
}

@Riverpod(keepAlive: true)
Future<MovieSource> movieRepository(MovieRepositoryRef ref) async {
  final database = await ref.watch(databaseProvider.future);
  final serviceFuture = ref.watch(networkMovieSourceProvider.future);
  return MovieRepository(
      await serviceFuture, database);
}

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(MovieViewModelRef ref) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final model = MovieViewModel(await repositoryFuture);
  await model.setup();
  return model;
}

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPrefs(SharedPrefsRef ref) =>
    SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
Future<Prefs> prefs(PrefsRef ref) async {
  final sharedPrefs = await ref.read(sharedPrefsProvider.future);
  return Prefs(sharedPrefs);
}

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) => AppRouter();

@Riverpod(keepAlive: true)
Future<IDatabase> database(DatabaseRef ref) {
  // Change this to what we want to use
  return Future.value(ref.watch(firebaseProvider));
}

@Riverpod(keepAlive: true)
IDatabase firebase(FirebaseRef ref) => FirebaseDatabase();

@Riverpod(keepAlive: true)
Future<IDatabase> driftDatabase(DriftDatabaseRef ref) {
  return Future.value(DriftDatabase());
}

