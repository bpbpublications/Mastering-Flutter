// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FavoriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteScreen(),
      );
    },
    GenreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenreScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MovieDetailRouteArgs>(
          orElse: () =>
              MovieDetailRouteArgs(movieId: pathParams.getInt('movieId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetail(
          args.movieId,
          key: args.key,
        ),
      );
    },
    MovieListingRoute.name: (routeData) {
      final args = routeData.argsAs<MovieListingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieListing(
          args.movieType,
          key: args.key,
        ),
      );
    },
    VideoPageRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VideoPage(
          args.movieVideo,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [FavoriteScreen]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenreScreen]
class GenreRoute extends PageRouteInfo<void> {
  const GenreRoute({List<PageRouteInfo>? children})
      : super(
          GenreRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetail]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    required int movieId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            movieId: movieId,
            key: key,
          ),
          rawPathParams: {'movieId': movieId},
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<MovieDetailRouteArgs> page =
      PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    required this.movieId,
    this.key,
  });

  final int movieId;

  final Key? key;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{movieId: $movieId, key: $key}';
  }
}

/// generated route for
/// [MovieListing]
class MovieListingRoute extends PageRouteInfo<MovieListingRouteArgs> {
  MovieListingRoute({
    required MovieType movieType,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MovieListingRoute.name,
          args: MovieListingRouteArgs(
            movieType: movieType,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieListingRoute';

  static const PageInfo<MovieListingRouteArgs> page =
      PageInfo<MovieListingRouteArgs>(name);
}

class MovieListingRouteArgs {
  const MovieListingRouteArgs({
    required this.movieType,
    this.key,
  });

  final MovieType movieType;

  final Key? key;

  @override
  String toString() {
    return 'MovieListingRouteArgs{movieType: $movieType, key: $key}';
  }
}

/// generated route for
/// [VideoPage]
class VideoPageRoute extends PageRouteInfo<VideoPageRouteArgs> {
  VideoPageRoute({
    required MovieVideo movieVideo,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VideoPageRoute.name,
          args: VideoPageRouteArgs(
            movieVideo: movieVideo,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VideoPageRoute';

  static const PageInfo<VideoPageRouteArgs> page =
      PageInfo<VideoPageRouteArgs>(name);
}

class VideoPageRouteArgs {
  const VideoPageRouteArgs({
    required this.movieVideo,
    this.key,
  });

  final MovieVideo movieVideo;

  final Key? key;

  @override
  String toString() {
    return 'VideoPageRouteArgs{movieVideo: $movieVideo, key: $key}';
  }
}
