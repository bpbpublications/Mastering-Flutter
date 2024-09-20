// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieAPIServiceHash() => r'023c50e3f209269edd43e320e34e33ec7bbe2a85';

/// See also [movieAPIService].
@ProviderFor(movieAPIService)
final movieAPIServiceProvider = AutoDisposeProvider<MovieAPIService>.internal(
  movieAPIService,
  name: r'movieAPIServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieAPIServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieAPIServiceRef = AutoDisposeProviderRef<MovieAPIService>;
String _$movieViewModelHash() => r'55fce40008d2e9f3dac256689df298c499709a86';

/// See also [movieViewModel].
@ProviderFor(movieViewModel)
final movieViewModelProvider =
    AutoDisposeFutureProvider<MovieViewModel>.internal(
  movieViewModel,
  name: r'movieViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieViewModelRef = AutoDisposeFutureProviderRef<MovieViewModel>;
String _$appRouterHash() => r'e7117babaf66aac31d3a18df675491079a51eb60';

/// See also [appRouter].
@ProviderFor(appRouter)
final appRouterProvider = AutoDisposeProvider<AppRouter>.internal(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppRouterRef = AutoDisposeProviderRef<AppRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
