// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieAPIServiceHash() => r'db9ab9b85429b927cb42da2dd05e3ebc092e5107';

/// See also [movieAPIService].
@ProviderFor(movieAPIService)
final movieAPIServiceProvider = Provider<MovieAPIService>.internal(
  movieAPIService,
  name: r'movieAPIServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieAPIServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieAPIServiceRef = ProviderRef<MovieAPIService>;
String _$movieViewModelHash() => r'9b490423e589b860aeeabe341b9d309ec62cf41d';

/// See also [movieViewModel].
@ProviderFor(movieViewModel)
final movieViewModelProvider = FutureProvider<MovieViewModel>.internal(
  movieViewModel,
  name: r'movieViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieViewModelRef = FutureProviderRef<MovieViewModel>;
String _$sharedPrefsHash() => r'0ebc135ba0bea1685cfcb6d3e19119eec07a339a';

/// See also [sharedPrefs].
@ProviderFor(sharedPrefs)
final sharedPrefsProvider = FutureProvider<SharedPreferences>.internal(
  sharedPrefs,
  name: r'sharedPrefsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sharedPrefsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPrefsRef = FutureProviderRef<SharedPreferences>;
String _$prefsHash() => r'17cdb26eee576ff65fcfde9a84ac9146206202ba';

/// See also [prefs].
@ProviderFor(prefs)
final prefsProvider = FutureProvider<Prefs>.internal(
  prefs,
  name: r'prefsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$prefsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PrefsRef = FutureProviderRef<Prefs>;
String _$appRouterHash() => r'42599edccdcfb58d05fc5c5c1776f848db2a5b20';

/// See also [appRouter].
@ProviderFor(appRouter)
final appRouterProvider = Provider<AppRouter>.internal(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppRouterRef = ProviderRef<AppRouter>;
String _$driftDatabaseHash() => r'57a57a8cafbbaed5eca1bc2581913e5f1546089a';

/// See also [driftDatabase].
@ProviderFor(driftDatabase)
final driftDatabaseProvider = FutureProvider<IDatabase>.internal(
  driftDatabase,
  name: r'driftDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$driftDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DriftDatabaseRef = FutureProviderRef<IDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
