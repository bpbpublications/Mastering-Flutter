import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_configuration.freezed.dart';
part 'movie_configuration.g.dart';

@freezed
class MovieConfiguration with _$MovieConfiguration {
  const factory MovieConfiguration({
    @JsonKey(name: 'images')
    required MovieConfigurationImages images,
    @JsonKey(name: 'change_keys')
    required List<String> changeKeys,
  }) = _MovieConfiguration;

  factory MovieConfiguration.fromJson(Map<String, dynamic> json) => _$MovieConfigurationFromJson(json);
}

@freezed
class MovieConfigurationImages with _$MovieConfigurationImages {
  const factory MovieConfigurationImages({
    @JsonKey(name: 'base_url')
    required String baseUrl,
    @JsonKey(name: 'secure_base_url')
    required String secureBaseUrl,
    @JsonKey(name: 'backdrop_sizes')
    required List<String> backdropSizes,
    @JsonKey(name: 'logo_sizes')
    required List<String> logoSizes,
    @JsonKey(name: 'poster_sizes')
    required List<String> posterSizes,
    @JsonKey(name: 'profile_sizes')
    required List<String> profileSizes,
    @JsonKey(name: 'still_sizes')
    required List<String> stillSizes,
  }) = _MovieConfigurationImages;

  factory MovieConfigurationImages.fromJson(Map<String, dynamic> json) => _$MovieConfigurationImagesFromJson(json);
}
