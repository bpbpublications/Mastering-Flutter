// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieCreditsImpl _$$MovieCreditsImplFromJson(Map<String, dynamic> json) =>
    _$MovieCreditsImpl(
      id: (json['id'] as num).toInt(),
      cast: (json['cast'] as List<dynamic>)
          .map((e) => MovieCast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>)
          .map((e) => MovieCast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieCreditsImplToJson(_$MovieCreditsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast.map((e) => e.toJson()).toList(),
      'crew': instance.crew.map((e) => e.toJson()).toList(),
    };

_$MovieCastImpl _$$MovieCastImplFromJson(Map<String, dynamic> json) =>
    _$MovieCastImpl(
      adult: json['adult'] as bool,
      gender: (json['gender'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originalName: json['original_name'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      profilePath: json['profile_path'] as String?,
      castId: (json['cast_id'] as num?)?.toInt(),
      character: json['character'] as String?,
      creditId: json['credit_id'] as String,
      order: (json['order'] as num?)?.toInt(),
      job: json['job'] as String?,
    );

Map<String, dynamic> _$$MovieCastImplToJson(_$MovieCastImpl instance) {
  final val = <String, dynamic>{
    'adult': instance.adult,
    'gender': instance.gender,
    'id': instance.id,
    'name': instance.name,
    'original_name': instance.originalName,
    'popularity': instance.popularity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile_path', instance.profilePath);
  writeNotNull('cast_id', instance.castId);
  writeNotNull('character', instance.character);
  val['credit_id'] = instance.creditId;
  writeNotNull('order', instance.order);
  writeNotNull('job', instance.job);
  return val;
}
