// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenreState _$GenreStateFromJson(Map<String, dynamic> json) {
  return _GenreState.fromJson(json);
}

/// @nodoc
mixin _$GenreState {
  Genre get genre => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreStateCopyWith<GenreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreStateCopyWith<$Res> {
  factory $GenreStateCopyWith(
          GenreState value, $Res Function(GenreState) then) =
      _$GenreStateCopyWithImpl<$Res, GenreState>;
  @useResult
  $Res call({Genre genre, bool isSelected});

  $GenreCopyWith<$Res> get genre;
}

/// @nodoc
class _$GenreStateCopyWithImpl<$Res, $Val extends GenreState>
    implements $GenreStateCopyWith<$Res> {
  _$GenreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenreCopyWith<$Res> get genre {
    return $GenreCopyWith<$Res>(_value.genre, (value) {
      return _then(_value.copyWith(genre: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenreStateImplCopyWith<$Res>
    implements $GenreStateCopyWith<$Res> {
  factory _$$GenreStateImplCopyWith(
          _$GenreStateImpl value, $Res Function(_$GenreStateImpl) then) =
      __$$GenreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Genre genre, bool isSelected});

  @override
  $GenreCopyWith<$Res> get genre;
}

/// @nodoc
class __$$GenreStateImplCopyWithImpl<$Res>
    extends _$GenreStateCopyWithImpl<$Res, _$GenreStateImpl>
    implements _$$GenreStateImplCopyWith<$Res> {
  __$$GenreStateImplCopyWithImpl(
      _$GenreStateImpl _value, $Res Function(_$GenreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? isSelected = null,
  }) {
    return _then(_$GenreStateImpl(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreStateImpl implements _GenreState {
  const _$GenreStateImpl({required this.genre, required this.isSelected});

  factory _$GenreStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreStateImplFromJson(json);

  @override
  final Genre genre;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'GenreState(genre: $genre, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreStateImpl &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genre, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreStateImplCopyWith<_$GenreStateImpl> get copyWith =>
      __$$GenreStateImplCopyWithImpl<_$GenreStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreStateImplToJson(
      this,
    );
  }
}

abstract class _GenreState implements GenreState {
  const factory _GenreState(
      {required final Genre genre,
      required final bool isSelected}) = _$GenreStateImpl;

  factory _GenreState.fromJson(Map<String, dynamic> json) =
      _$GenreStateImpl.fromJson;

  @override
  Genre get genre;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$GenreStateImplCopyWith<_$GenreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
