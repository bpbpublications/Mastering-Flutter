// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieResults _$MovieResultsFromJson(Map<String, dynamic> json) {
  return _MovieResults.fromJson(json);
}

/// @nodoc
mixin _$MovieResults {
// 4
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError; // 5
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date', fromJson: _parseDate)
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultsCopyWith<MovieResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultsCopyWith<$Res> {
  factory $MovieResultsCopyWith(
          MovieResults value, $Res Function(MovieResults) then) =
      _$MovieResultsCopyWithImpl<$Res, MovieResults>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'media_type') String? mediaType,
      bool adult,
      String title,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      double popularity,
      @JsonKey(name: 'release_date', fromJson: _parseDate)
      DateTime? releaseDate,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$MovieResultsCopyWithImpl<$Res, $Val extends MovieResults>
    implements $MovieResultsCopyWith<$Res> {
  _$MovieResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? adult = null,
    Object? title = null,
    Object? originalLanguage = null,
    Object? genreIds = null,
    Object? popularity = null,
    Object? releaseDate = freezed,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResultsImplCopyWith<$Res>
    implements $MovieResultsCopyWith<$Res> {
  factory _$$MovieResultsImplCopyWith(
          _$MovieResultsImpl value, $Res Function(_$MovieResultsImpl) then) =
      __$$MovieResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'media_type') String? mediaType,
      bool adult,
      String title,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      double popularity,
      @JsonKey(name: 'release_date', fromJson: _parseDate)
      DateTime? releaseDate,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$$MovieResultsImplCopyWithImpl<$Res>
    extends _$MovieResultsCopyWithImpl<$Res, _$MovieResultsImpl>
    implements _$$MovieResultsImplCopyWith<$Res> {
  __$$MovieResultsImplCopyWithImpl(
      _$MovieResultsImpl _value, $Res Function(_$MovieResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? adult = null,
    Object? title = null,
    Object? originalLanguage = null,
    Object? genreIds = null,
    Object? popularity = null,
    Object? releaseDate = freezed,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$MovieResultsImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResultsImpl implements _MovieResults {
  const _$MovieResultsImpl(
      {@JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.id,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'media_type') this.mediaType,
      required this.adult,
      required this.title,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds,
      required this.popularity,
      @JsonKey(name: 'release_date', fromJson: _parseDate) this.releaseDate,
      required this.video,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount})
      : _genreIds = genreIds;

  factory _$MovieResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResultsImplFromJson(json);

// 4
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
// 5
  @override
  final int id;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  final bool adult;
  @override
  final String title;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  final double popularity;
  @override
  @JsonKey(name: 'release_date', fromJson: _parseDate)
  final DateTime? releaseDate;
  @override
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'MovieResults(backdropPath: $backdropPath, id: $id, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, adult: $adult, title: $title, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResultsImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      id,
      originalTitle,
      overview,
      posterPath,
      mediaType,
      adult,
      title,
      originalLanguage,
      const DeepCollectionEquality().hash(_genreIds),
      popularity,
      releaseDate,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResultsImplCopyWith<_$MovieResultsImpl> get copyWith =>
      __$$MovieResultsImplCopyWithImpl<_$MovieResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResultsImplToJson(
      this,
    );
  }
}

abstract class _MovieResults implements MovieResults {
  const factory _MovieResults(
          {@JsonKey(name: 'backdrop_path') final String? backdropPath,
          required final int id,
          @JsonKey(name: 'original_title') required final String originalTitle,
          required final String overview,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'media_type') final String? mediaType,
          required final bool adult,
          required final String title,
          @JsonKey(name: 'original_language')
          required final String originalLanguage,
          @JsonKey(name: 'genre_ids') required final List<int> genreIds,
          required final double popularity,
          @JsonKey(name: 'release_date', fromJson: _parseDate)
          final DateTime? releaseDate,
          required final bool video,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          @JsonKey(name: 'vote_count') required final int voteCount}) =
      _$MovieResultsImpl;

  factory _MovieResults.fromJson(Map<String, dynamic> json) =
      _$MovieResultsImpl.fromJson;

  @override // 4
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override // 5
  int get id;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  bool get adult;
  @override
  String get title;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'release_date', fromJson: _parseDate)
  DateTime? get releaseDate;
  @override
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$MovieResultsImplCopyWith<_$MovieResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
