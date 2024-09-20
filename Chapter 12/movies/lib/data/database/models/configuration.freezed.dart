// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DBConfiguration _$DBConfigurationFromJson(Map<String, dynamic> json) {
  return _DBConfiguration.fromJson(json);
}

/// @nodoc
mixin _$DBConfiguration {
  int get id => throw _privateConstructorUsedError;
  DBConfigurationImages get images => throw _privateConstructorUsedError;
  List<String> get changeKeys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DBConfigurationCopyWith<DBConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBConfigurationCopyWith<$Res> {
  factory $DBConfigurationCopyWith(
          DBConfiguration value, $Res Function(DBConfiguration) then) =
      _$DBConfigurationCopyWithImpl<$Res, DBConfiguration>;
  @useResult
  $Res call({int id, DBConfigurationImages images, List<String> changeKeys});

  $DBConfigurationImagesCopyWith<$Res> get images;
}

/// @nodoc
class _$DBConfigurationCopyWithImpl<$Res, $Val extends DBConfiguration>
    implements $DBConfigurationCopyWith<$Res> {
  _$DBConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? changeKeys = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as DBConfigurationImages,
      changeKeys: null == changeKeys
          ? _value.changeKeys
          : changeKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DBConfigurationImagesCopyWith<$Res> get images {
    return $DBConfigurationImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DBConfigurationImplCopyWith<$Res>
    implements $DBConfigurationCopyWith<$Res> {
  factory _$$DBConfigurationImplCopyWith(_$DBConfigurationImpl value,
          $Res Function(_$DBConfigurationImpl) then) =
      __$$DBConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DBConfigurationImages images, List<String> changeKeys});

  @override
  $DBConfigurationImagesCopyWith<$Res> get images;
}

/// @nodoc
class __$$DBConfigurationImplCopyWithImpl<$Res>
    extends _$DBConfigurationCopyWithImpl<$Res, _$DBConfigurationImpl>
    implements _$$DBConfigurationImplCopyWith<$Res> {
  __$$DBConfigurationImplCopyWithImpl(
      _$DBConfigurationImpl _value, $Res Function(_$DBConfigurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? changeKeys = null,
  }) {
    return _then(_$DBConfigurationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as DBConfigurationImages,
      changeKeys: null == changeKeys
          ? _value._changeKeys
          : changeKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DBConfigurationImpl extends _DBConfiguration {
  const _$DBConfigurationImpl(
      {required this.id,
      required this.images,
      required final List<String> changeKeys})
      : _changeKeys = changeKeys,
        super._();

  factory _$DBConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DBConfigurationImplFromJson(json);

  @override
  final int id;
  @override
  final DBConfigurationImages images;
  final List<String> _changeKeys;
  @override
  List<String> get changeKeys {
    if (_changeKeys is EqualUnmodifiableListView) return _changeKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changeKeys);
  }

  @override
  String toString() {
    return 'DBConfiguration(id: $id, images: $images, changeKeys: $changeKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DBConfigurationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality()
                .equals(other._changeKeys, _changeKeys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, images,
      const DeepCollectionEquality().hash(_changeKeys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DBConfigurationImplCopyWith<_$DBConfigurationImpl> get copyWith =>
      __$$DBConfigurationImplCopyWithImpl<_$DBConfigurationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DBConfigurationImplToJson(
      this,
    );
  }
}

abstract class _DBConfiguration extends DBConfiguration {
  const factory _DBConfiguration(
      {required final int id,
      required final DBConfigurationImages images,
      required final List<String> changeKeys}) = _$DBConfigurationImpl;
  const _DBConfiguration._() : super._();

  factory _DBConfiguration.fromJson(Map<String, dynamic> json) =
      _$DBConfigurationImpl.fromJson;

  @override
  int get id;
  @override
  DBConfigurationImages get images;
  @override
  List<String> get changeKeys;
  @override
  @JsonKey(ignore: true)
  _$$DBConfigurationImplCopyWith<_$DBConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DBConfigurationImages _$DBConfigurationImagesFromJson(
    Map<String, dynamic> json) {
  return _DBConfigurationImages.fromJson(json);
}

/// @nodoc
mixin _$DBConfigurationImages {
  String get baseUrl => throw _privateConstructorUsedError;
  String get secureBaseUrl => throw _privateConstructorUsedError;
  List<String> get backdropSizes => throw _privateConstructorUsedError;
  List<String> get logoSizes => throw _privateConstructorUsedError;
  List<String> get posterSizes => throw _privateConstructorUsedError;
  List<String> get profileSizes => throw _privateConstructorUsedError;
  List<String> get stillSizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DBConfigurationImagesCopyWith<DBConfigurationImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBConfigurationImagesCopyWith<$Res> {
  factory $DBConfigurationImagesCopyWith(DBConfigurationImages value,
          $Res Function(DBConfigurationImages) then) =
      _$DBConfigurationImagesCopyWithImpl<$Res, DBConfigurationImages>;
  @useResult
  $Res call(
      {String baseUrl,
      String secureBaseUrl,
      List<String> backdropSizes,
      List<String> logoSizes,
      List<String> posterSizes,
      List<String> profileSizes,
      List<String> stillSizes});
}

/// @nodoc
class _$DBConfigurationImagesCopyWithImpl<$Res,
        $Val extends DBConfigurationImages>
    implements $DBConfigurationImagesCopyWith<$Res> {
  _$DBConfigurationImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? secureBaseUrl = null,
    Object? backdropSizes = null,
    Object? logoSizes = null,
    Object? posterSizes = null,
    Object? profileSizes = null,
    Object? stillSizes = null,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secureBaseUrl: null == secureBaseUrl
          ? _value.secureBaseUrl
          : secureBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backdropSizes: null == backdropSizes
          ? _value.backdropSizes
          : backdropSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      logoSizes: null == logoSizes
          ? _value.logoSizes
          : logoSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      posterSizes: null == posterSizes
          ? _value.posterSizes
          : posterSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileSizes: null == profileSizes
          ? _value.profileSizes
          : profileSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stillSizes: null == stillSizes
          ? _value.stillSizes
          : stillSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DBConfigurationImagesImplCopyWith<$Res>
    implements $DBConfigurationImagesCopyWith<$Res> {
  factory _$$DBConfigurationImagesImplCopyWith(
          _$DBConfigurationImagesImpl value,
          $Res Function(_$DBConfigurationImagesImpl) then) =
      __$$DBConfigurationImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseUrl,
      String secureBaseUrl,
      List<String> backdropSizes,
      List<String> logoSizes,
      List<String> posterSizes,
      List<String> profileSizes,
      List<String> stillSizes});
}

/// @nodoc
class __$$DBConfigurationImagesImplCopyWithImpl<$Res>
    extends _$DBConfigurationImagesCopyWithImpl<$Res,
        _$DBConfigurationImagesImpl>
    implements _$$DBConfigurationImagesImplCopyWith<$Res> {
  __$$DBConfigurationImagesImplCopyWithImpl(_$DBConfigurationImagesImpl _value,
      $Res Function(_$DBConfigurationImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? secureBaseUrl = null,
    Object? backdropSizes = null,
    Object? logoSizes = null,
    Object? posterSizes = null,
    Object? profileSizes = null,
    Object? stillSizes = null,
  }) {
    return _then(_$DBConfigurationImagesImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secureBaseUrl: null == secureBaseUrl
          ? _value.secureBaseUrl
          : secureBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backdropSizes: null == backdropSizes
          ? _value._backdropSizes
          : backdropSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      logoSizes: null == logoSizes
          ? _value._logoSizes
          : logoSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      posterSizes: null == posterSizes
          ? _value._posterSizes
          : posterSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileSizes: null == profileSizes
          ? _value._profileSizes
          : profileSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stillSizes: null == stillSizes
          ? _value._stillSizes
          : stillSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DBConfigurationImagesImpl extends _DBConfigurationImages {
  const _$DBConfigurationImagesImpl(
      {required this.baseUrl,
      required this.secureBaseUrl,
      required final List<String> backdropSizes,
      required final List<String> logoSizes,
      required final List<String> posterSizes,
      required final List<String> profileSizes,
      required final List<String> stillSizes})
      : _backdropSizes = backdropSizes,
        _logoSizes = logoSizes,
        _posterSizes = posterSizes,
        _profileSizes = profileSizes,
        _stillSizes = stillSizes,
        super._();

  factory _$DBConfigurationImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DBConfigurationImagesImplFromJson(json);

  @override
  final String baseUrl;
  @override
  final String secureBaseUrl;
  final List<String> _backdropSizes;
  @override
  List<String> get backdropSizes {
    if (_backdropSizes is EqualUnmodifiableListView) return _backdropSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdropSizes);
  }

  final List<String> _logoSizes;
  @override
  List<String> get logoSizes {
    if (_logoSizes is EqualUnmodifiableListView) return _logoSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logoSizes);
  }

  final List<String> _posterSizes;
  @override
  List<String> get posterSizes {
    if (_posterSizes is EqualUnmodifiableListView) return _posterSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posterSizes);
  }

  final List<String> _profileSizes;
  @override
  List<String> get profileSizes {
    if (_profileSizes is EqualUnmodifiableListView) return _profileSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileSizes);
  }

  final List<String> _stillSizes;
  @override
  List<String> get stillSizes {
    if (_stillSizes is EqualUnmodifiableListView) return _stillSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stillSizes);
  }

  @override
  String toString() {
    return 'DBConfigurationImages(baseUrl: $baseUrl, secureBaseUrl: $secureBaseUrl, backdropSizes: $backdropSizes, logoSizes: $logoSizes, posterSizes: $posterSizes, profileSizes: $profileSizes, stillSizes: $stillSizes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DBConfigurationImagesImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.secureBaseUrl, secureBaseUrl) ||
                other.secureBaseUrl == secureBaseUrl) &&
            const DeepCollectionEquality()
                .equals(other._backdropSizes, _backdropSizes) &&
            const DeepCollectionEquality()
                .equals(other._logoSizes, _logoSizes) &&
            const DeepCollectionEquality()
                .equals(other._posterSizes, _posterSizes) &&
            const DeepCollectionEquality()
                .equals(other._profileSizes, _profileSizes) &&
            const DeepCollectionEquality()
                .equals(other._stillSizes, _stillSizes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseUrl,
      secureBaseUrl,
      const DeepCollectionEquality().hash(_backdropSizes),
      const DeepCollectionEquality().hash(_logoSizes),
      const DeepCollectionEquality().hash(_posterSizes),
      const DeepCollectionEquality().hash(_profileSizes),
      const DeepCollectionEquality().hash(_stillSizes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DBConfigurationImagesImplCopyWith<_$DBConfigurationImagesImpl>
      get copyWith => __$$DBConfigurationImagesImplCopyWithImpl<
          _$DBConfigurationImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DBConfigurationImagesImplToJson(
      this,
    );
  }
}

abstract class _DBConfigurationImages extends DBConfigurationImages {
  const factory _DBConfigurationImages(
      {required final String baseUrl,
      required final String secureBaseUrl,
      required final List<String> backdropSizes,
      required final List<String> logoSizes,
      required final List<String> posterSizes,
      required final List<String> profileSizes,
      required final List<String> stillSizes}) = _$DBConfigurationImagesImpl;
  const _DBConfigurationImages._() : super._();

  factory _DBConfigurationImages.fromJson(Map<String, dynamic> json) =
      _$DBConfigurationImagesImpl.fromJson;

  @override
  String get baseUrl;
  @override
  String get secureBaseUrl;
  @override
  List<String> get backdropSizes;
  @override
  List<String> get logoSizes;
  @override
  List<String> get posterSizes;
  @override
  List<String> get profileSizes;
  @override
  List<String> get stillSizes;
  @override
  @JsonKey(ignore: true)
  _$$DBConfigurationImagesImplCopyWith<_$DBConfigurationImagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
