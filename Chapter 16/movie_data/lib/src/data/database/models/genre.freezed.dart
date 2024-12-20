// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DBMovieGenre _$DBMovieGenreFromJson(Map<String, dynamic> json) {
  return _DBMovieGenre.fromJson(json);
}

/// @nodoc
mixin _$DBMovieGenre {
  int get id => throw _privateConstructorUsedError;
  int get remoteId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this DBMovieGenre to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DBMovieGenre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DBMovieGenreCopyWith<DBMovieGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBMovieGenreCopyWith<$Res> {
  factory $DBMovieGenreCopyWith(
          DBMovieGenre value, $Res Function(DBMovieGenre) then) =
      _$DBMovieGenreCopyWithImpl<$Res, DBMovieGenre>;
  @useResult
  $Res call({int id, int remoteId, String name});
}

/// @nodoc
class _$DBMovieGenreCopyWithImpl<$Res, $Val extends DBMovieGenre>
    implements $DBMovieGenreCopyWith<$Res> {
  _$DBMovieGenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DBMovieGenre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? remoteId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      remoteId: null == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DBMovieGenreImplCopyWith<$Res>
    implements $DBMovieGenreCopyWith<$Res> {
  factory _$$DBMovieGenreImplCopyWith(
          _$DBMovieGenreImpl value, $Res Function(_$DBMovieGenreImpl) then) =
      __$$DBMovieGenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int remoteId, String name});
}

/// @nodoc
class __$$DBMovieGenreImplCopyWithImpl<$Res>
    extends _$DBMovieGenreCopyWithImpl<$Res, _$DBMovieGenreImpl>
    implements _$$DBMovieGenreImplCopyWith<$Res> {
  __$$DBMovieGenreImplCopyWithImpl(
      _$DBMovieGenreImpl _value, $Res Function(_$DBMovieGenreImpl) _then)
      : super(_value, _then);

  /// Create a copy of DBMovieGenre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? remoteId = null,
    Object? name = null,
  }) {
    return _then(_$DBMovieGenreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      remoteId: null == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DBMovieGenreImpl extends _DBMovieGenre {
  const _$DBMovieGenreImpl(
      {required this.id, required this.remoteId, required this.name})
      : super._();

  factory _$DBMovieGenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$DBMovieGenreImplFromJson(json);

  @override
  final int id;
  @override
  final int remoteId;
  @override
  final String name;

  @override
  String toString() {
    return 'DBMovieGenre(id: $id, remoteId: $remoteId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DBMovieGenreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.remoteId, remoteId) ||
                other.remoteId == remoteId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, remoteId, name);

  /// Create a copy of DBMovieGenre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DBMovieGenreImplCopyWith<_$DBMovieGenreImpl> get copyWith =>
      __$$DBMovieGenreImplCopyWithImpl<_$DBMovieGenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DBMovieGenreImplToJson(
      this,
    );
  }
}

abstract class _DBMovieGenre extends DBMovieGenre {
  const factory _DBMovieGenre(
      {required final int id,
      required final int remoteId,
      required final String name}) = _$DBMovieGenreImpl;
  const _DBMovieGenre._() : super._();

  factory _DBMovieGenre.fromJson(Map<String, dynamic> json) =
      _$DBMovieGenreImpl.fromJson;

  @override
  int get id;
  @override
  int get remoteId;
  @override
  String get name;

  /// Create a copy of DBMovieGenre
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DBMovieGenreImplCopyWith<_$DBMovieGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
