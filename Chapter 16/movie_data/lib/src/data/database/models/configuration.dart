import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';
part 'configuration.g.dart';

@freezed
class DBConfiguration with _$DBConfiguration {
  const factory DBConfiguration({
    required int id,
    required DBConfigurationImages images,
    required List<String> changeKeys,
  }) = _DBConfiguration;
  // Add this private constructor
  const DBConfiguration._();
  factory DBConfiguration.fromJson(Map<String, dynamic> json) => _$DBConfigurationFromJson(json);

}

@freezed
class DBConfigurationImages with _$DBConfigurationImages {
  const factory DBConfigurationImages({
    required String baseUrl,
    required String secureBaseUrl,
    required List<String> backdropSizes,
    required List<String> logoSizes,
    required List<String> posterSizes,
    required List<String> profileSizes,
    required List<String> stillSizes,
  }) = _DBConfigurationImages;
  const DBConfigurationImages._();
  factory DBConfigurationImages.fromJson(Map<String, dynamic> json) => _$DBConfigurationImagesFromJson(json);
}

