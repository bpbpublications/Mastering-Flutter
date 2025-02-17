import 'package:lumberdash/lumberdash.dart';
import 'package:movie_data/movie_data.dart';
import 'package:movies/utils/utils.dart';

class MovieViewModel {
  final MovieSource _movieRepository;
  MovieConfiguration? movieConfiguration;
  List<Genre>? movieGenres;
  List<MovieResults> trendingMovies = [];
  List<MovieResults> topRatedMovies = [];
  List<MovieResults> popularMovies = [];
  List<MovieResults> nowPlayingMovies = [];

  MovieViewModel(this._movieRepository);

  Future setup() async {
    await Future.wait([setupConfiguration(), setupGenres()]);
  }

  Future setupConfiguration() async {
    final configuration = await _movieRepository.getMovieConfiguration();
    if (configuration != null) {
      movieConfiguration = configuration;
    }
  }

  Future setupGenres() async {
    movieGenres = await _movieRepository.getGenres();
  }

  String? getImageUrl(ImageSize size, String? file) {
    if (file == null || movieConfiguration == null) {
      logMessage('getImageUrl file: $file');
      return null;
    }
    return getSizedImageUrl(size, movieConfiguration!, file);
  }

  Future saveFavorite(MovieDetails movieDetails) async {
    _movieRepository.saveFavorite(movieDetails);
  }

  Future<bool> removeFavorite(int id) async {
    return _movieRepository.removeFavorite(id);
  }

  Future<List<DBFavorite>> getFavorites() async {
    return _movieRepository.getFavorites();
  }

  Stream<List<DBFavorite>> streamFavorites() {
    return _movieRepository.streamFavorites();
  }

  Future<MovieResponse?> getTrendingMovies(int page) async {
    final response = await _movieRepository.getTrending(page);
    if (response != null) {
      trendingMovies = response.results;
    }
    return response;
  }

  Future<MovieResponse?> getPopular(int page) async {
    final response = await _movieRepository.getPopular(page);
    if (response != null) {
      popularMovies = response.results;
    }
    return response;
  }

  Future<MovieResponse?> getTopRated(int page) async {
    final response = await _movieRepository.getTopRated(page);
    if (response != null) {
      topRatedMovies = response.results;
    }
    return response;
  }

  Future<MovieResponse?> getNowPlaying(int page) async {
    final response = await _movieRepository.getNowPlaying(page);
    if (response != null) {
      nowPlayingMovies = response.results;
    }
    return response;
  }

  Future<MovieDetails?> getMovieDetails(int movieId) async {
    return _movieRepository.getMovieDetails(movieId);
  }

   Future<MovieVideos?> getMovieVideos(int movieId) async {
    return _movieRepository.getMovieVideos(movieId);
  }

  Future<MovieCredits?> getMovieCredits(int movieId) async {
    return _movieRepository.getMovieCredits(movieId);
  }

 /// genres is a pipe delimited string
  Future<MovieResponse?> searchMoviesByGenre(String genres, int page) async {
    final response = await _movieRepository.searchMoviesByGenre(genres, page);
    if (response != null) {
      nowPlayingMovies = response.results;
    }
    return response;
  }

  Future<MovieResponse?> searchMovies(String searchText, int page) async {
    final response = await _movieRepository.searchMovies(searchText, page);
    if (response != null) {
      nowPlayingMovies = response.results;
    }
    return response;
  }

}
