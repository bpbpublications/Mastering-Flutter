// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieAPIServiceHash() => r'1fcc456233061aa0ae60254828e4d2e61c6ba3cf';

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
String _$movieViewModelHash() => r'391332b31ebd14a673e656f93321ac7c0c2dfdc2';

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
String _$appRouterHash() => r'fc1228daa214cc1ad475cfdeafc6db36a6a237b5';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
