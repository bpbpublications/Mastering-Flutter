// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieConfiguration _$MovieConfigurationFromJson(Map<String, dynamic> json) {
  return _MovieConfiguration.fromJson(json);
}

/// @nodoc
mixin _$MovieConfiguration {
  @JsonKey(name: 'images')
  MovieConfigurationImages get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'change_keys')
  List<String> get changeKeys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieConfigurationCopyWith<MovieConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieConfigurationCopyWith<$Res> {
  factory $MovieConfigurationCopyWith(
          MovieConfiguration value, $Res Function(MovieConfiguration) then) =
      _$MovieConfigurationCopyWithImpl<$Res, MovieConfiguration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'images') MovieConfigurationImages images,
      @JsonKey(name: 'change_keys') List<String> changeKeys});

  $MovieConfigurationImagesCopyWith<$Res> get images;
}

/// @nodoc
class _$MovieConfigurationCopyWithImpl<$Res, $Val extends MovieConfiguration>
    implements $MovieConfigurationCopyWith<$Res> {
  _$MovieConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? changeKeys = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as MovieConfigurationImages,
      changeKeys: null == changeKeys
          ? _value.changeKeys
          : changeKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieConfigurationImagesCopyWith<$Res> get images {
    return $MovieConfigurationImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieConfigurationImplCopyWith<$Res>
    implements $MovieConfigurationCopyWith<$Res> {
  factory _$$MovieConfigurationImplCopyWith(_$MovieConfigurationImpl value,
          $Res Function(_$MovieConfigurationImpl) then) =
      __$$MovieConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'images') MovieConfigurationImages images,
      @JsonKey(name: 'change_keys') List<String> changeKeys});

  @override
  $MovieConfigurationImagesCopyWith<$Res> get images;
}

/// @nodoc
class __$$MovieConfigurationImplCopyWithImpl<$Res>
    extends _$MovieConfigurationCopyWithImpl<$Res, _$MovieConfigurationImpl>
    implements _$$MovieConfigurationImplCopyWith<$Res> {
  __$$MovieConfigurationImplCopyWithImpl(_$MovieConfigurationImpl _value,
      $Res Function(_$MovieConfigurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? changeKeys = null,
  }) {
    return _then(_$MovieConfigurationImpl(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as MovieConfigurationImages,
      changeKeys: null == changeKeys
          ? _value._changeKeys
          : changeKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieConfigurationImpl implements _MovieConfiguration {
  const _$MovieConfigurationImpl(
      {@JsonKey(name: 'images') required this.images,
      @JsonKey(name: 'change_keys') required final List<String> changeKeys})
      : _changeKeys = changeKeys;

  factory _$MovieConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieConfigurationImplFromJson(json);

  @override
  @JsonKey(name: 'images')
  final MovieConfigurationImages images;
  final List<String> _changeKeys;
  @override
  @JsonKey(name: 'change_keys')
  List<String> get changeKeys {
    if (_changeKeys is EqualUnmodifiableListView) return _changeKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changeKeys);
  }

  @override
  String toString() {
    return 'MovieConfiguration(images: $images, changeKeys: $changeKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieConfigurationImpl &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality()
                .equals(other._changeKeys, _changeKeys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, images, const DeepCollectionEquality().hash(_changeKeys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieConfigurationImplCopyWith<_$MovieConfigurationImpl> get copyWith =>
      __$$MovieConfigurationImplCopyWithImpl<_$MovieConfigurationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieConfigurationImplToJson(
      this,
    );
  }
}

abstract class _MovieConfiguration implements MovieConfiguration {
  const factory _MovieConfiguration(
      {@JsonKey(name: 'images') required final MovieConfigurationImages images,
      @JsonKey(name: 'change_keys')
      required final List<String> changeKeys}) = _$MovieConfigurationImpl;

  factory _MovieConfiguration.fromJson(Map<String, dynamic> json) =
      _$MovieConfigurationImpl.fromJson;

  @override
  @JsonKey(name: 'images')
  MovieConfigurationImages get images;
  @override
  @JsonKey(name: 'change_keys')
  List<String> get changeKeys;
  @override
  @JsonKey(ignore: true)
  _$$MovieConfigurationImplCopyWith<_$MovieConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieConfigurationImages _$MovieConfigurationImagesFromJson(
    Map<String, dynamic> json) {
  return _MovieConfigurationImages.fromJson(json);
}

/// @nodoc
mixin _$MovieConfigurationImages {
  @JsonKey(name: 'base_url')
  String get baseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'secure_base_url')
  String get secureBaseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_sizes')
  List<String> get backdropSizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_sizes')
  List<String> get logoSizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_sizes')
  List<String> get posterSizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_sizes')
  List<String> get profileSizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'still_sizes')
  List<String> get stillSizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieConfigurationImagesCopyWith<MovieConfigurationImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieConfigurationImagesCopyWith<$Res> {
  factory $MovieConfigurationImagesCopyWith(MovieConfigurationImages value,
          $Res Function(MovieConfigurationImages) then) =
      _$MovieConfigurationImagesCopyWithImpl<$Res, MovieConfigurationImages>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_url') String baseUrl,
      @JsonKey(name: 'secure_base_url') String secureBaseUrl,
      @JsonKey(name: 'backdrop_sizes') List<String> backdropSizes,
      @JsonKey(name: 'logo_sizes') List<String> logoSizes,
      @JsonKey(name: 'poster_sizes') List<String> posterSizes,
      @JsonKey(name: 'profile_sizes') List<String> profileSizes,
      @JsonKey(name: 'still_sizes') List<String> stillSizes});
}

/// @nodoc
class _$MovieConfigurationImagesCopyWithImpl<$Res,
        $Val extends MovieConfigurationImages>
    implements $MovieConfigurationImagesCopyWith<$Res> {
  _$MovieConfigurationImagesCopyWithImpl(this._value, this._then);

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
abstract class _$$MovieConfigurationImagesImplCopyWith<$Res>
    implements $MovieConfigurationImagesCopyWith<$Res> {
  factory _$$MovieConfigurationImagesImplCopyWith(
          _$MovieConfigurationImagesImpl value,
          $Res Function(_$MovieConfigurationImagesImpl) then) =
      __$$MovieConfigurationImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_url') String baseUrl,
      @JsonKey(name: 'secure_base_url') String secureBaseUrl,
      @JsonKey(name: 'backdrop_sizes') List<String> backdropSizes,
      @JsonKey(name: 'logo_sizes') List<String> logoSizes,
      @JsonKey(name: 'poster_sizes') List<String> posterSizes,
      @JsonKey(name: 'profile_sizes') List<String> profileSizes,
      @JsonKey(name: 'still_sizes') List<String> stillSizes});
}

/// @nodoc
class __$$MovieConfigurationImagesImplCopyWithImpl<$Res>
    extends _$MovieConfigurationImagesCopyWithImpl<$Res,
        _$MovieConfigurationImagesImpl>
    implements _$$MovieConfigurationImagesImplCopyWith<$Res> {
  __$$MovieConfigurationImagesImplCopyWithImpl(
      _$MovieConfigurationImagesImpl _value,
      $Res Function(_$MovieConfigurationImagesImpl) _then)
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
    return _then(_$MovieConfigurationImagesImpl(
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
class _$MovieConfigurationImagesImpl implements _MovieConfigurationImages {
  const _$MovieConfigurationImagesImpl(
      {@JsonKey(name: 'base_url') required this.baseUrl,
      @JsonKey(name: 'secure_base_url') required this.secureBaseUrl,
      @JsonKey(name: 'backdrop_sizes')
      required final List<String> backdropSizes,
      @JsonKey(name: 'logo_sizes') required final List<String> logoSizes,
      @JsonKey(name: 'poster_sizes') required final List<String> posterSizes,
      @JsonKey(name: 'profile_sizes') required final List<String> profileSizes,
      @JsonKey(name: 'still_sizes') required final List<String> stillSizes})
      : _backdropSizes = backdropSizes,
        _logoSizes = logoSizes,
        _posterSizes = posterSizes,
        _profileSizes = profileSizes,
        _stillSizes = stillSizes;

  factory _$MovieConfigurationImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieConfigurationImagesImplFromJson(json);

  @override
  @JsonKey(name: 'base_url')
  final String baseUrl;
  @override
  @JsonKey(name: 'secure_base_url')
  final String secureBaseUrl;
  final List<String> _backdropSizes;
  @override
  @JsonKey(name: 'backdrop_sizes')
  List<String> get backdropSizes {
    if (_backdropSizes is EqualUnmodifiableListView) return _backdropSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdropSizes);
  }

  final List<String> _logoSizes;
  @override
  @JsonKey(name: 'logo_sizes')
  List<String> get logoSizes {
    if (_logoSizes is EqualUnmodifiableListView) return _logoSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logoSizes);
  }

  final List<String> _posterSizes;
  @override
  @JsonKey(name: 'poster_sizes')
  List<String> get posterSizes {
    if (_posterSizes is EqualUnmodifiableListView) return _posterSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posterSizes);
  }

  final List<String> _profileSizes;
  @override
  @JsonKey(name: 'profile_sizes')
  List<String> get profileSizes {
    if (_profileSizes is EqualUnmodifiableListView) return _profileSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileSizes);
  }

  final List<String> _stillSizes;
  @override
  @JsonKey(name: 'still_sizes')
  List<String> get stillSizes {
    if (_stillSizes is EqualUnmodifiableListView) return _stillSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stillSizes);
  }

  @override
  String toString() {
    return 'MovieConfigurationImages(baseUrl: $baseUrl, secureBaseUrl: $secureBaseUrl, backdropSizes: $backdropSizes, logoSizes: $logoSizes, posterSizes: $posterSizes, profileSizes: $profileSizes, stillSizes: $stillSizes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieConfigurationImagesImpl &&
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
  _$$MovieConfigurationImagesImplCopyWith<_$MovieConfigurationImagesImpl>
      get copyWith => __$$MovieConfigurationImagesImplCopyWithImpl<
          _$MovieConfigurationImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieConfigurationImagesImplToJson(
      this,
    );
  }
}

abstract class _MovieConfigurationImages implements MovieConfigurationImages {
  const factory _MovieConfigurationImages(
      {@JsonKey(name: 'base_url') required final String baseUrl,
      @JsonKey(name: 'secure_base_url') required final String secureBaseUrl,
      @JsonKey(name: 'backdrop_sizes')
      required final List<String> backdropSizes,
      @JsonKey(name: 'logo_sizes') required final List<String> logoSizes,
      @JsonKey(name: 'poster_sizes') required final List<String> posterSizes,
      @JsonKey(name: 'profile_sizes') required final List<String> profileSizes,
      @JsonKey(name: 'still_sizes')
      required final List<String> stillSizes}) = _$MovieConfigurationImagesImpl;

  factory _MovieConfigurationImages.fromJson(Map<String, dynamic> json) =
      _$MovieConfigurationImagesImpl.fromJson;

  @override
  @JsonKey(name: 'base_url')
  String get baseUrl;
  @override
  @JsonKey(name: 'secure_base_url')
  String get secureBaseUrl;
  @override
  @JsonKey(name: 'backdrop_sizes')
  List<String> get backdropSizes;
  @override
  @JsonKey(name: 'logo_sizes')
  List<String> get logoSizes;
  @override
  @JsonKey(name: 'poster_sizes')
  List<String> get posterSizes;
  @override
  @JsonKey(name: 'profile_sizes')
  List<String> get profileSizes;
  @override
  @JsonKey(name: 'still_sizes')
  List<String> get stillSizes;
  @override
  @JsonKey(ignore: true)
  _$$MovieConfigurationImagesImplCopyWith<_$MovieConfigurationImagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
