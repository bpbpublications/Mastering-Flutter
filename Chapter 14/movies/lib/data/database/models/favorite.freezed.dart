// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DBFavorite _$DBFavoriteFromJson(Map<String, dynamic> json) {
  return _DBFavorite.fromJson(json);
}

/// @nodoc
mixin _$DBFavorite {
  int get id => throw _privateConstructorUsedError;
  int get movieId => throw _privateConstructorUsedError;
  String get backdropPath => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  DateTime get releaseDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DBFavoriteCopyWith<DBFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBFavoriteCopyWith<$Res> {
  factory $DBFavoriteCopyWith(
          DBFavorite value, $Res Function(DBFavorite) then) =
      _$DBFavoriteCopyWithImpl<$Res, DBFavorite>;
  @useResult
  $Res call(
      {int id,
      int movieId,
      String backdropPath,
      String posterPath,
      bool favorite,
      double popularity,
      DateTime releaseDate,
      String title,
      String overview});
}

/// @nodoc
class _$DBFavoriteCopyWithImpl<$Res, $Val extends DBFavorite>
    implements $DBFavoriteCopyWith<$Res> {
  _$DBFavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieId = null,
    Object? backdropPath = null,
    Object? posterPath = null,
    Object? favorite = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DBFavoriteImplCopyWith<$Res>
    implements $DBFavoriteCopyWith<$Res> {
  factory _$$DBFavoriteImplCopyWith(
          _$DBFavoriteImpl value, $Res Function(_$DBFavoriteImpl) then) =
      __$$DBFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int movieId,
      String backdropPath,
      String posterPath,
      bool favorite,
      double popularity,
      DateTime releaseDate,
      String title,
      String overview});
}

/// @nodoc
class __$$DBFavoriteImplCopyWithImpl<$Res>
    extends _$DBFavoriteCopyWithImpl<$Res, _$DBFavoriteImpl>
    implements _$$DBFavoriteImplCopyWith<$Res> {
  __$$DBFavoriteImplCopyWithImpl(
      _$DBFavoriteImpl _value, $Res Function(_$DBFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieId = null,
    Object? backdropPath = null,
    Object? posterPath = null,
    Object? favorite = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? overview = null,
  }) {
    return _then(_$DBFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DBFavoriteImpl extends _DBFavorite {
  const _$DBFavoriteImpl(
      {required this.id,
      required this.movieId,
      required this.backdropPath,
      required this.posterPath,
      required this.favorite,
      required this.popularity,
      required this.releaseDate,
      required this.title,
      required this.overview})
      : super._();

  factory _$DBFavoriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$DBFavoriteImplFromJson(json);

  @override
  final int id;
  @override
  final int movieId;
  @override
  final String backdropPath;
  @override
  final String posterPath;
  @override
  final bool favorite;
  @override
  final double popularity;
  @override
  final DateTime releaseDate;
  @override
  final String title;
  @override
  final String overview;

  @override
  String toString() {
    return 'DBFavorite(id: $id, movieId: $movieId, backdropPath: $backdropPath, posterPath: $posterPath, favorite: $favorite, popularity: $popularity, releaseDate: $releaseDate, title: $title, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DBFavoriteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, movieId, backdropPath,
      posterPath, favorite, popularity, releaseDate, title, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DBFavoriteImplCopyWith<_$DBFavoriteImpl> get copyWith =>
      __$$DBFavoriteImplCopyWithImpl<_$DBFavoriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DBFavoriteImplToJson(
      this,
    );
  }
}

abstract class _DBFavorite extends DBFavorite {
  const factory _DBFavorite(
      {required final int id,
      required final int movieId,
      required final String backdropPath,
      required final String posterPath,
      required final bool favorite,
      required final double popularity,
      required final DateTime releaseDate,
      required final String title,
      required final String overview}) = _$DBFavoriteImpl;
  const _DBFavorite._() : super._();

  factory _DBFavorite.fromJson(Map<String, dynamic> json) =
      _$DBFavoriteImpl.fromJson;

  @override
  int get id;
  @override
  int get movieId;
  @override
  String get backdropPath;
  @override
  String get posterPath;
  @override
  bool get favorite;
  @override
  double get popularity;
  @override
  DateTime get releaseDate;
  @override
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$DBFavoriteImplCopyWith<_$DBFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
