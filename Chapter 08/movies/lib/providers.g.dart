// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieImagesHash() => r'2eae0db344f83ec6841a1a44125fed30a1a937a6';

/// See also [movieImages].
@ProviderFor(movieImages)
final movieImagesProvider = AutoDisposeProvider<List<String>>.internal(
  movieImages,
  name: r'movieImagesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$movieImagesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieImagesRef = AutoDisposeProviderRef<List<String>>;
String _$genresHash() => r'abc71f2e13e51418775b36be8d1d6d88814cb3f3';

/// See also [genres].
@ProviderFor(genres)
final genresProvider = AutoDisposeProvider<List<GenreState>>.internal(
  genres,
  name: r'genresProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$genresHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenresRef = AutoDisposeProviderRef<List<GenreState>>;
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
