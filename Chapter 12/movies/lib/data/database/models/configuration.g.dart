// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DBConfigurationImpl _$$DBConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$DBConfigurationImpl(
      id: (json['id'] as num).toInt(),
      images: DBConfigurationImages.fromJson(
          json['images'] as Map<String, dynamic>),
      changeKeys: (json['changeKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DBConfigurationImplToJson(
        _$DBConfigurationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'changeKeys': instance.changeKeys,
    };

_$DBConfigurationImagesImpl _$$DBConfigurationImagesImplFromJson(
        Map<String, dynamic> json) =>
    _$DBConfigurationImagesImpl(
      baseUrl: json['baseUrl'] as String,
      secureBaseUrl: json['secureBaseUrl'] as String,
      backdropSizes: (json['backdropSizes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      logoSizes:
          (json['logoSizes'] as List<dynamic>).map((e) => e as String).toList(),
      posterSizes: (json['posterSizes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      profileSizes: (json['profileSizes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      stillSizes: (json['stillSizes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DBConfigurationImagesImplToJson(
        _$DBConfigurationImagesImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'secureBaseUrl': instance.secureBaseUrl,
      'backdropSizes': instance.backdropSizes,
      'logoSizes': instance.logoSizes,
      'posterSizes': instance.posterSizes,
      'profileSizes': instance.profileSizes,
      'stillSizes': instance.stillSizes,
    };
