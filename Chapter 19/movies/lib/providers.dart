import 'package:event_bus/event_bus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_data/movie_data.dart';
import 'package:movie_plugin/movie_plugin.dart';
import 'package:movies/firebase_options.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/ui/menus.dart';
import 'package:movies/ui/movie_viewmodel.dart';
import 'package:movies/utils/prefs.dart';
import 'package:movies/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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
  String apiKey;
  if (!isWeb()) {
    apiKey = dotenv.env['TMDB_KEY']!;
  } else {
    apiKey = await webLoad();
  }
  final service = MovieAPIService(apiKey);
  await service.init();
  return service;
}

Future<String> webLoad() async {
  String apiKey = '';
  try {
    final dotEnvString = await rootBundle.loadString('dotenv');
    if (dotEnvString.contains('TMDB_KEY')) {
      final parts = dotEnvString.split('=');
      if (parts.length == 2) {
        apiKey = parts[1];
        if (apiKey.contains("'")) {
          apiKey = apiKey.replaceAll("'", "");
        }
      }
    } else {
      apiKey = dotEnvString;
    }
  } catch (e) {
    print(e);
  }
  return apiKey;
}

@Riverpod(keepAlive: true)
Future<MovieSource> networkMovieSource(NetworkMovieSourceRef ref) async {
  final service = await ref.read(movieAPIServiceProvider.future);
  return NetworkMovieSource(service);
}

@Riverpod(keepAlive: true)
Future<MovieSource> movieRepository(MovieRepositoryRef ref) async {
  final database = ref.watch(databaseProvider);
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
Prefs prefs(PrefsRef ref) {
  return Prefs(ref.read(moviePluginProvider));
}

@Riverpod(keepAlive: true)
MoviePlugin moviePlugin(MoviePluginRef ref) {
  return MoviePlugin();
}

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) => AppRouter();

@Riverpod(keepAlive: true)
IDatabase database(DatabaseRef ref) {
  // Change this to what we want to use
  // final driftFuture = ref.watch(driftDatabaseProvider.future);
  // return driftFuture;
  return ref.read(firebaseProvider);
}

@Riverpod(keepAlive: true)
IDatabase firebase(FirebaseRef ref) {
  return FirebaseDatabase(DefaultFirebaseOptions.currentPlatform);
}

@Riverpod(keepAlive: true)
IDatabase driftDatabase(DriftDatabaseRef ref) {
  return DriftDatabase();
}

