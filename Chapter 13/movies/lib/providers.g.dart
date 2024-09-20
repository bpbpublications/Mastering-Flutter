// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$menuManagerHash() => r'7fd6df356b19455d7c8aeee8ee257dd1d2b07b22';

/// See also [menuManager].
@ProviderFor(menuManager)
final menuManagerProvider = Provider<MenuManager>.internal(
  menuManager,
  name: r'menuManagerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$menuManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MenuManagerRef = ProviderRef<MenuManager>;
String _$eventBusHash() => r'845507b56a22aaf35039ce02c7da5a89847803a8';

/// See also [eventBus].
@ProviderFor(eventBus)
final eventBusProvider = Provider<EventBus>.internal(
  eventBus,
  name: r'eventBusProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$eventBusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EventBusRef = ProviderRef<EventBus>;
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
String _$networkMovieSourceHash() =>
    r'f5a1cc9737e2506f0e4fbc9c9e37549b69a580f3';

/// See also [networkMovieSource].
@ProviderFor(networkMovieSource)
final networkMovieSourceProvider = Provider<MovieSource>.internal(
  networkMovieSource,
  name: r'networkMovieSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$networkMovieSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NetworkMovieSourceRef = ProviderRef<MovieSource>;
String _$movieRepositoryHash() => r'9b561112c24e541a26c198f66c0da49af4ee389b';

/// See also [movieRepository].
@ProviderFor(movieRepository)
final movieRepositoryProvider = FutureProvider<MovieSource>.internal(
  movieRepository,
  name: r'movieRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieRepositoryRef = FutureProviderRef<MovieSource>;
String _$movieViewModelHash() => r'6351caefd11fec1b6d0e2046f2cbe55eb15a3a56';

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
String _$fetchTrendingMoviesHash() =>
    r'8e9859388b4f4040d786a539275c62f0ab0c114f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchTrendingMovies].
@ProviderFor(fetchTrendingMovies)
const fetchTrendingMoviesProvider = FetchTrendingMoviesFamily();

/// See also [fetchTrendingMovies].
class FetchTrendingMoviesFamily extends Family<AsyncValue<MovieResponse?>> {
  /// See also [fetchTrendingMovies].
  const FetchTrendingMoviesFamily();

  /// See also [fetchTrendingMovies].
  FetchTrendingMoviesProvider call(
    int page,
  ) {
    return FetchTrendingMoviesProvider(
      page,
    );
  }

  @override
  FetchTrendingMoviesProvider getProviderOverride(
    covariant FetchTrendingMoviesProvider provider,
  ) {
    return call(
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchTrendingMoviesProvider';
}

/// See also [fetchTrendingMovies].
class FetchTrendingMoviesProvider extends FutureProvider<MovieResponse?> {
  /// See also [fetchTrendingMovies].
  FetchTrendingMoviesProvider(
    int page,
  ) : this._internal(
          (ref) => fetchTrendingMovies(
            ref as FetchTrendingMoviesRef,
            page,
          ),
          from: fetchTrendingMoviesProvider,
          name: r'fetchTrendingMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTrendingMoviesHash,
          dependencies: FetchTrendingMoviesFamily._dependencies,
          allTransitiveDependencies:
              FetchTrendingMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  FetchTrendingMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<MovieResponse?> Function(FetchTrendingMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTrendingMoviesProvider._internal(
        (ref) => create(ref as FetchTrendingMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  FutureProviderElement<MovieResponse?> createElement() {
    return _FetchTrendingMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTrendingMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTrendingMoviesRef on FutureProviderRef<MovieResponse?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchTrendingMoviesProviderElement
    extends FutureProviderElement<MovieResponse?> with FetchTrendingMoviesRef {
  _FetchTrendingMoviesProviderElement(super.provider);

  @override
  int get page => (origin as FetchTrendingMoviesProvider).page;
}

String _$fetchPopularMoviesHash() =>
    r'5c934be0bcf121076bfc9262b7507b9381104b28';

/// See also [fetchPopularMovies].
@ProviderFor(fetchPopularMovies)
const fetchPopularMoviesProvider = FetchPopularMoviesFamily();

/// See also [fetchPopularMovies].
class FetchPopularMoviesFamily extends Family<AsyncValue<MovieResponse?>> {
  /// See also [fetchPopularMovies].
  const FetchPopularMoviesFamily();

  /// See also [fetchPopularMovies].
  FetchPopularMoviesProvider call(
    int page,
  ) {
    return FetchPopularMoviesProvider(
      page,
    );
  }

  @override
  FetchPopularMoviesProvider getProviderOverride(
    covariant FetchPopularMoviesProvider provider,
  ) {
    return call(
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchPopularMoviesProvider';
}

/// See also [fetchPopularMovies].
class FetchPopularMoviesProvider extends FutureProvider<MovieResponse?> {
  /// See also [fetchPopularMovies].
  FetchPopularMoviesProvider(
    int page,
  ) : this._internal(
          (ref) => fetchPopularMovies(
            ref as FetchPopularMoviesRef,
            page,
          ),
          from: fetchPopularMoviesProvider,
          name: r'fetchPopularMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPopularMoviesHash,
          dependencies: FetchPopularMoviesFamily._dependencies,
          allTransitiveDependencies:
              FetchPopularMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  FetchPopularMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<MovieResponse?> Function(FetchPopularMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPopularMoviesProvider._internal(
        (ref) => create(ref as FetchPopularMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  FutureProviderElement<MovieResponse?> createElement() {
    return _FetchPopularMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPopularMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPopularMoviesRef on FutureProviderRef<MovieResponse?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchPopularMoviesProviderElement
    extends FutureProviderElement<MovieResponse?> with FetchPopularMoviesRef {
  _FetchPopularMoviesProviderElement(super.provider);

  @override
  int get page => (origin as FetchPopularMoviesProvider).page;
}

String _$fetchTopRatedMoviesHash() =>
    r'a81ab2c36f23ec43bfbf7eae48f5824e681f7764';

/// See also [fetchTopRatedMovies].
@ProviderFor(fetchTopRatedMovies)
const fetchTopRatedMoviesProvider = FetchTopRatedMoviesFamily();

/// See also [fetchTopRatedMovies].
class FetchTopRatedMoviesFamily extends Family<AsyncValue<MovieResponse?>> {
  /// See also [fetchTopRatedMovies].
  const FetchTopRatedMoviesFamily();

  /// See also [fetchTopRatedMovies].
  FetchTopRatedMoviesProvider call(
    int page,
  ) {
    return FetchTopRatedMoviesProvider(
      page,
    );
  }

  @override
  FetchTopRatedMoviesProvider getProviderOverride(
    covariant FetchTopRatedMoviesProvider provider,
  ) {
    return call(
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchTopRatedMoviesProvider';
}

/// See also [fetchTopRatedMovies].
class FetchTopRatedMoviesProvider extends FutureProvider<MovieResponse?> {
  /// See also [fetchTopRatedMovies].
  FetchTopRatedMoviesProvider(
    int page,
  ) : this._internal(
          (ref) => fetchTopRatedMovies(
            ref as FetchTopRatedMoviesRef,
            page,
          ),
          from: fetchTopRatedMoviesProvider,
          name: r'fetchTopRatedMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTopRatedMoviesHash,
          dependencies: FetchTopRatedMoviesFamily._dependencies,
          allTransitiveDependencies:
              FetchTopRatedMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  FetchTopRatedMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<MovieResponse?> Function(FetchTopRatedMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTopRatedMoviesProvider._internal(
        (ref) => create(ref as FetchTopRatedMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  FutureProviderElement<MovieResponse?> createElement() {
    return _FetchTopRatedMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTopRatedMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTopRatedMoviesRef on FutureProviderRef<MovieResponse?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchTopRatedMoviesProviderElement
    extends FutureProviderElement<MovieResponse?> with FetchTopRatedMoviesRef {
  _FetchTopRatedMoviesProviderElement(super.provider);

  @override
  int get page => (origin as FetchTopRatedMoviesProvider).page;
}

String _$fetchNowPlayingMoviesHash() =>
    r'c160c8061c62e54648c561a052ccb6e06a3613a8';

/// See also [fetchNowPlayingMovies].
@ProviderFor(fetchNowPlayingMovies)
const fetchNowPlayingMoviesProvider = FetchNowPlayingMoviesFamily();

/// See also [fetchNowPlayingMovies].
class FetchNowPlayingMoviesFamily extends Family<AsyncValue<MovieResponse?>> {
  /// See also [fetchNowPlayingMovies].
  const FetchNowPlayingMoviesFamily();

  /// See also [fetchNowPlayingMovies].
  FetchNowPlayingMoviesProvider call(
    int page,
  ) {
    return FetchNowPlayingMoviesProvider(
      page,
    );
  }

  @override
  FetchNowPlayingMoviesProvider getProviderOverride(
    covariant FetchNowPlayingMoviesProvider provider,
  ) {
    return call(
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchNowPlayingMoviesProvider';
}

/// See also [fetchNowPlayingMovies].
class FetchNowPlayingMoviesProvider extends FutureProvider<MovieResponse?> {
  /// See also [fetchNowPlayingMovies].
  FetchNowPlayingMoviesProvider(
    int page,
  ) : this._internal(
          (ref) => fetchNowPlayingMovies(
            ref as FetchNowPlayingMoviesRef,
            page,
          ),
          from: fetchNowPlayingMoviesProvider,
          name: r'fetchNowPlayingMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchNowPlayingMoviesHash,
          dependencies: FetchNowPlayingMoviesFamily._dependencies,
          allTransitiveDependencies:
              FetchNowPlayingMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  FetchNowPlayingMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<MovieResponse?> Function(FetchNowPlayingMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchNowPlayingMoviesProvider._internal(
        (ref) => create(ref as FetchNowPlayingMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  FutureProviderElement<MovieResponse?> createElement() {
    return _FetchNowPlayingMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchNowPlayingMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchNowPlayingMoviesRef on FutureProviderRef<MovieResponse?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchNowPlayingMoviesProviderElement
    extends FutureProviderElement<MovieResponse?>
    with FetchNowPlayingMoviesRef {
  _FetchNowPlayingMoviesProviderElement(super.provider);

  @override
  int get page => (origin as FetchNowPlayingMoviesProvider).page;
}

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
