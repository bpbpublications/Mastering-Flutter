// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieCredits _$MovieCreditsFromJson(Map<String, dynamic> json) {
  return _MovieCredits.fromJson(json);
}

/// @nodoc
mixin _$MovieCredits {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cast')
  List<MovieCast> get cast => throw _privateConstructorUsedError;
  @JsonKey(name: 'crew')
  List<MovieCast> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsCopyWith<MovieCredits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsCopyWith<$Res> {
  factory $MovieCreditsCopyWith(
          MovieCredits value, $Res Function(MovieCredits) then) =
      _$MovieCreditsCopyWithImpl<$Res, MovieCredits>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'cast') List<MovieCast> cast,
      @JsonKey(name: 'crew') List<MovieCast> crew});
}

/// @nodoc
class _$MovieCreditsCopyWithImpl<$Res, $Val extends MovieCredits>
    implements $MovieCreditsCopyWith<$Res> {
  _$MovieCreditsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<MovieCast>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<MovieCast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCreditsImplCopyWith<$Res>
    implements $MovieCreditsCopyWith<$Res> {
  factory _$$MovieCreditsImplCopyWith(
          _$MovieCreditsImpl value, $Res Function(_$MovieCreditsImpl) then) =
      __$$MovieCreditsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'cast') List<MovieCast> cast,
      @JsonKey(name: 'crew') List<MovieCast> crew});
}

/// @nodoc
class __$$MovieCreditsImplCopyWithImpl<$Res>
    extends _$MovieCreditsCopyWithImpl<$Res, _$MovieCreditsImpl>
    implements _$$MovieCreditsImplCopyWith<$Res> {
  __$$MovieCreditsImplCopyWithImpl(
      _$MovieCreditsImpl _value, $Res Function(_$MovieCreditsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$MovieCreditsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<MovieCast>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<MovieCast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCreditsImpl implements _MovieCredits {
  const _$MovieCreditsImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'cast') required final List<MovieCast> cast,
      @JsonKey(name: 'crew') required final List<MovieCast> crew})
      : _cast = cast,
        _crew = crew;

  factory _$MovieCreditsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCreditsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  final List<MovieCast> _cast;
  @override
  @JsonKey(name: 'cast')
  List<MovieCast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<MovieCast> _crew;
  @override
  @JsonKey(name: 'crew')
  List<MovieCast> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'MovieCredits(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditsImplCopyWith<_$MovieCreditsImpl> get copyWith =>
      __$$MovieCreditsImplCopyWithImpl<_$MovieCreditsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieCreditsImplToJson(
      this,
    );
  }
}

abstract class _MovieCredits implements MovieCredits {
  const factory _MovieCredits(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'cast') required final List<MovieCast> cast,
          @JsonKey(name: 'crew') required final List<MovieCast> crew}) =
      _$MovieCreditsImpl;

  factory _MovieCredits.fromJson(Map<String, dynamic> json) =
      _$MovieCreditsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'cast')
  List<MovieCast> get cast;
  @override
  @JsonKey(name: 'crew')
  List<MovieCast> get crew;
  @override
  @JsonKey(ignore: true)
  _$$MovieCreditsImplCopyWith<_$MovieCreditsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieCast _$MovieCastFromJson(Map<String, dynamic> json) {
  return _MovieCast.fromJson(json);
}

/// @nodoc
mixin _$MovieCast {
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'cast_id')
  int? get castId => throw _privateConstructorUsedError;
  @JsonKey(name: 'character')
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_id')
  String get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order')
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'job')
  String? get job => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCastCopyWith<MovieCast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastCopyWith<$Res> {
  factory $MovieCastCopyWith(MovieCast value, $Res Function(MovieCast) then) =
      _$MovieCastCopyWithImpl<$Res, MovieCast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'cast_id') int? castId,
      @JsonKey(name: 'character') String? character,
      @JsonKey(name: 'credit_id') String creditId,
      @JsonKey(name: 'order') int? order,
      @JsonKey(name: 'job') String? job});
}

/// @nodoc
class _$MovieCastCopyWithImpl<$Res, $Val extends MovieCast>
    implements $MovieCastCopyWith<$Res> {
  _$MovieCastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? name = null,
    Object? originalName = null,
    Object? popularity = null,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = null,
    Object? order = freezed,
    Object? job = freezed,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCastImplCopyWith<$Res>
    implements $MovieCastCopyWith<$Res> {
  factory _$$MovieCastImplCopyWith(
          _$MovieCastImpl value, $Res Function(_$MovieCastImpl) then) =
      __$$MovieCastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'cast_id') int? castId,
      @JsonKey(name: 'character') String? character,
      @JsonKey(name: 'credit_id') String creditId,
      @JsonKey(name: 'order') int? order,
      @JsonKey(name: 'job') String? job});
}

/// @nodoc
class __$$MovieCastImplCopyWithImpl<$Res>
    extends _$MovieCastCopyWithImpl<$Res, _$MovieCastImpl>
    implements _$$MovieCastImplCopyWith<$Res> {
  __$$MovieCastImplCopyWithImpl(
      _$MovieCastImpl _value, $Res Function(_$MovieCastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? name = null,
    Object? originalName = null,
    Object? popularity = null,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = null,
    Object? order = freezed,
    Object? job = freezed,
  }) {
    return _then(_$MovieCastImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCastImpl implements _MovieCast {
  const _$MovieCastImpl(
      {@JsonKey(name: 'adult') required this.adult,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'original_name') required this.originalName,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'profile_path') required this.profilePath,
      @JsonKey(name: 'cast_id') this.castId,
      @JsonKey(name: 'character') this.character,
      @JsonKey(name: 'credit_id') required this.creditId,
      @JsonKey(name: 'order') this.order,
      @JsonKey(name: 'job') this.job});

  factory _$MovieCastImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCastImplFromJson(json);

  @override
  @JsonKey(name: 'adult')
  final bool adult;
  @override
  @JsonKey(name: 'gender')
  final int gender;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey(name: 'cast_id')
  final int? castId;
  @override
  @JsonKey(name: 'character')
  final String? character;
  @override
  @JsonKey(name: 'credit_id')
  final String creditId;
  @override
  @JsonKey(name: 'order')
  final int? order;
  @override
  @JsonKey(name: 'job')
  final String? job;

  @override
  String toString() {
    return 'MovieCast(adult: $adult, gender: $gender, id: $id, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCastImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.castId, castId) || other.castId == castId) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      name,
      originalName,
      popularity,
      profilePath,
      castId,
      character,
      creditId,
      order,
      job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCastImplCopyWith<_$MovieCastImpl> get copyWith =>
      __$$MovieCastImplCopyWithImpl<_$MovieCastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieCastImplToJson(
      this,
    );
  }
}

abstract class _MovieCast implements MovieCast {
  const factory _MovieCast(
      {@JsonKey(name: 'adult') required final bool adult,
      @JsonKey(name: 'gender') required final int gender,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'original_name') required final String originalName,
      @JsonKey(name: 'popularity') required final double popularity,
      @JsonKey(name: 'profile_path') required final String? profilePath,
      @JsonKey(name: 'cast_id') final int? castId,
      @JsonKey(name: 'character') final String? character,
      @JsonKey(name: 'credit_id') required final String creditId,
      @JsonKey(name: 'order') final int? order,
      @JsonKey(name: 'job') final String? job}) = _$MovieCastImpl;

  factory _MovieCast.fromJson(Map<String, dynamic> json) =
      _$MovieCastImpl.fromJson;

  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(name: 'gender')
  int get gender;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'original_name')
  String get originalName;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(name: 'cast_id')
  int? get castId;
  @override
  @JsonKey(name: 'character')
  String? get character;
  @override
  @JsonKey(name: 'credit_id')
  String get creditId;
  @override
  @JsonKey(name: 'order')
  int? get order;
  @override
  @JsonKey(name: 'job')
  String? get job;
  @override
  @JsonKey(ignore: true)
  _$$MovieCastImplCopyWith<_$MovieCastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
