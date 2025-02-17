import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const String movieAPIUrl = 'https://api.themoviedb.org/3/';
const genreUrl = 'genre/movie/list';
const trendingUrl = 'trending/movie/week';
const nowPlayingUrl = 'movie/now_playing';
const topRatedUrl = 'movie/top_rated';
const popularUrl = 'movie/popular';
const searchMovieUrl = 'search/movie';
const discoverMovieUrl = 'discover/movie';
const movieUrl = 'movie';
const configurationUrl = 'configuration';
const creditsParameter = 'credits';
const videosParameter = 'videos';
const queryParameterName = 'query';
const genreParameterName = 'with_genres';
const pageParameterName = 'page';
const movieIdParameterName = 'movie_id';
const apiKeyParameterName = 'api_key';

class MovieAPIService {
  late final Dio dio;
  final String apiKey = dotenv.env['TMDB_KEY']!;
  final showDebugInfo = false;

  MovieAPIService() {
    configureDio();
  }

  void configureDio() {
    final options = BaseOptions(
      baseUrl: movieAPIUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    dio = Dio(options);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          final queryParameters = options.queryParameters;
          queryParameters[apiKeyParameterName] = apiKey;
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // Do something with response data.
          // If you want to reject the request with a error message,
          // you can reject a `DioException` object using `handler.reject(dioError)`.
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          // Do something with response error.
          // If you want to resolve the request with some custom data,
          // you can resolve a `Response` object using `handler.resolve(response)`.
          return handler.next(error);
        },
      ),
    );
    if (showDebugInfo) {
      dio.interceptors.add(LogInterceptor(
        responseBody: true,
        // Whether to log the response body (can be large)
        error: true,
        // Whether to log errors
        request: true,
        // Whether to log requests
        requestHeader: true,
        // Whether to log request headers
        responseHeader: true, // Whether to log response headers
      ));
    }
  }

  Future<Response> getTrending([int page = 1]) async {
    final response =
        await dio.get(trendingUrl, queryParameters: {pageParameterName: page});
    return response;
  }

  Future<Response> getNowPlaying([int page = 1]) async {
    final response = await dio
        .get(nowPlayingUrl, queryParameters: {pageParameterName: page});
    return response;
  }

  Future<Response> getTopRated([int page = 1]) async {
    final response =
        await dio.get(topRatedUrl, queryParameters: {pageParameterName: page});
    return response;
  }

  Future<Response> getPopular([int page = 1]) async {
    final response =
        await dio.get(popularUrl, queryParameters: {pageParameterName: page});
    return response;
  }

  Future<Response> getMovieDetails(int movieId) async {
    return dio.get('$movieUrl/$movieId');
  }

  Future<Response> getMovieVideos(int movieId) async {
    return dio.get('$movieUrl/$movieId/$videosParameter');
  }

  Future<Response> getMovieCredits(int movieId) async {
    return dio.get('$movieUrl/$movieId/$creditsParameter');
  }

  Future<Response> getGenres() async {
    final response = await dio.get(genreUrl);
    return response;
  }
  Future<Response> searchMovies(String query, [int page = 1]) async {
    return dio
        .get(searchMovieUrl, queryParameters: {queryParameterName: query});
  }

  Future<Response> searchMoviesByGenre(String genre, [int page = 1]) async {
    return dio.get(discoverMovieUrl,
        queryParameters: {genreParameterName: genre, pageParameterName: page});
  }

  Future<Response> getMovieConfiguration() async {
    return dio.get(configurationUrl);
  }



}
