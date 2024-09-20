import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/data/database/drift/database_interface.dart';
import 'package:movies/data/database/drift/drift_database.dart';
import 'package:movies/data/models/movie_response.dart';
import 'package:movies/data/repository/movie_respository.dart';
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


@Riverpod(keepAlive: true)
MenuManager menuManager(MenuManagerRef ref) => MenuManager(ref);

@Riverpod(keepAlive: true)
EventBus eventBus(EventBusRef ref) => EventBus();

@Riverpod(keepAlive: true)
MovieAPIService movieAPIService(MovieAPIServiceRef ref) => MovieAPIService();

@Riverpod(keepAlive: true)
MovieSource networkMovieSource(NetworkMovieSourceRef ref) =>
    NetworkMovieSource(ref.watch(movieAPIServiceProvider));

@Riverpod(keepAlive: true)
Future<MovieSource> movieRepository(MovieRepositoryRef ref) async {
  final databaseFuture = ref.watch(driftDatabaseProvider.future);
  return MovieRepository(
      ref.watch(networkMovieSourceProvider), await databaseFuture);
}

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(MovieViewModelRef ref) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final model = MovieViewModel(await repositoryFuture);
  await model.setup();
  return model;
}

@Riverpod(keepAlive: true)
Future<MovieResponse?> fetchTrendingMovies(
    FetchTrendingMoviesRef ref, int page) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final repository = await repositoryFuture;
  return repository.getTrending(page);
}

@Riverpod(keepAlive: true)
Future<MovieResponse?> fetchPopularMovies(
    FetchPopularMoviesRef ref, int page) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final repository = await repositoryFuture;
  return repository.getPopular(page);
}

@Riverpod(keepAlive: true)
Future<MovieResponse?> fetchTopRatedMovies(
    FetchTopRatedMoviesRef ref, int page) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final repository = await repositoryFuture;
  return repository.getTopRated(page);
}

@Riverpod(keepAlive: true)
Future<MovieResponse?> fetchNowPlayingMovies(
    FetchNowPlayingMoviesRef ref, int page) async {
  final repositoryFuture = ref.watch(movieRepositoryProvider.future);
  final repository = await repositoryFuture;
  return repository.getNowPlaying(page);
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
Future<IDatabase> driftDatabase(DriftDatabaseRef ref) {
  return Future.value(DriftDatabase());
}

