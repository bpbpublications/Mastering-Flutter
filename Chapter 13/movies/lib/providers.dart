import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/data/database/drift/database_interface.dart';
import 'package:movies/data/database/drift/drift_database.dart';
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
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final database = ref.read(databaseProvider);
  final service = await ref.read(movieAPIServiceProvider.future);
  final model = MovieViewModel(database: database, movieAPIService: service);
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
  return DriftDatabase();
}
