// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieVideos _$MovieVideosFromJson(Map<String, dynamic> json) {
  return _MovieVideos.fromJson(json);
}

/// @nodoc
mixin _$MovieVideos {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieVideo> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideosCopyWith<MovieVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideosCopyWith<$Res> {
  factory $MovieVideosCopyWith(
          MovieVideos value, $Res Function(MovieVideos) then) =
      _$MovieVideosCopyWithImpl<$Res, MovieVideos>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'results') List<MovieVideo> results});
}

/// @nodoc
class _$MovieVideosCopyWithImpl<$Res, $Val extends MovieVideos>
    implements $MovieVideosCopyWith<$Res> {
  _$MovieVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieVideo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieVideosImplCopyWith<$Res>
    implements $MovieVideosCopyWith<$Res> {
  factory _$$MovieVideosImplCopyWith(
          _$MovieVideosImpl value, $Res Function(_$MovieVideosImpl) then) =
      __$$MovieVideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'results') List<MovieVideo> results});
}

/// @nodoc
class __$$MovieVideosImplCopyWithImpl<$Res>
    extends _$MovieVideosCopyWithImpl<$Res, _$MovieVideosImpl>
    implements _$$MovieVideosImplCopyWith<$Res> {
  __$$MovieVideosImplCopyWithImpl(
      _$MovieVideosImpl _value, $Res Function(_$MovieVideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_$MovieVideosImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieVideo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieVideosImpl implements _MovieVideos {
  const _$MovieVideosImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'results') required final List<MovieVideo> results})
      : _results = results;

  factory _$MovieVideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieVideosImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  final List<MovieVideo> _results;
  @override
  @JsonKey(name: 'results')
  List<MovieVideo> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieVideos(id: $id, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieVideosImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieVideosImplCopyWith<_$MovieVideosImpl> get copyWith =>
      __$$MovieVideosImplCopyWithImpl<_$MovieVideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieVideosImplToJson(
      this,
    );
  }
}

abstract class _MovieVideos implements MovieVideos {
  const factory _MovieVideos(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'results') required final List<MovieVideo> results}) =
      _$MovieVideosImpl;

  factory _MovieVideos.fromJson(Map<String, dynamic> json) =
      _$MovieVideosImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'results')
  List<MovieVideo> get results;
  @override
  @JsonKey(ignore: true)
  _$$MovieVideosImplCopyWith<_$MovieVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieVideo _$MovieVideoFromJson(Map<String, dynamic> json) {
  return _MovieVideo.fromJson(json);
}

/// @nodoc
mixin _$MovieVideo {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'official')
  bool get official => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  DateTime get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideoCopyWith<MovieVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideoCopyWith<$Res> {
  factory $MovieVideoCopyWith(
          MovieVideo value, $Res Function(MovieVideo) then) =
      _$MovieVideoCopyWithImpl<$Res, MovieVideo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'key') String key,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'official') bool official,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class _$MovieVideoCopyWithImpl<$Res, $Val extends MovieVideo>
    implements $MovieVideoCopyWith<$Res> {
  _$MovieVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? size = null,
    Object? official = null,
    Object? publishedAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieVideoImplCopyWith<$Res>
    implements $MovieVideoCopyWith<$Res> {
  factory _$$MovieVideoImplCopyWith(
          _$MovieVideoImpl value, $Res Function(_$MovieVideoImpl) then) =
      __$$MovieVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'key') String key,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'official') bool official,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$MovieVideoImplCopyWithImpl<$Res>
    extends _$MovieVideoCopyWithImpl<$Res, _$MovieVideoImpl>
    implements _$$MovieVideoImplCopyWith<$Res> {
  __$$MovieVideoImplCopyWithImpl(
      _$MovieVideoImpl _value, $Res Function(_$MovieVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? size = null,
    Object? official = null,
    Object? publishedAt = null,
    Object? id = null,
  }) {
    return _then(_$MovieVideoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieVideoImpl implements _MovieVideo {
  const _$MovieVideoImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'official') required this.official,
      @JsonKey(name: 'published_at') required this.publishedAt,
      @JsonKey(name: 'id') required this.id});

  factory _$MovieVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieVideoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'size')
  final int size;
  @override
  @JsonKey(name: 'official')
  final bool official;
  @override
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'MovieVideo(name: $name, key: $key, size: $size, official: $official, publishedAt: $publishedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieVideoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, key, size, official, publishedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieVideoImplCopyWith<_$MovieVideoImpl> get copyWith =>
      __$$MovieVideoImplCopyWithImpl<_$MovieVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieVideoImplToJson(
      this,
    );
  }
}

abstract class _MovieVideo implements MovieVideo {
  const factory _MovieVideo(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'key') required final String key,
      @JsonKey(name: 'size') required final int size,
      @JsonKey(name: 'official') required final bool official,
      @JsonKey(name: 'published_at') required final DateTime publishedAt,
      @JsonKey(name: 'id') required final String id}) = _$MovieVideoImpl;

  factory _MovieVideo.fromJson(Map<String, dynamic> json) =
      _$MovieVideoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'size')
  int get size;
  @override
  @JsonKey(name: 'official')
  bool get official;
  @override
  @JsonKey(name: 'published_at')
  DateTime get publishedAt;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MovieVideoImplCopyWith<_$MovieVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
