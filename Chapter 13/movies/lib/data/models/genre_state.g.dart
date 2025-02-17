// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreStateImpl _$$GenreStateImplFromJson(Map<String, dynamic> json) =>
    _$GenreStateImpl(
      genre: Genre.fromJson(json['genre'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool,
    );

Map<String, dynamic> _$$GenreStateImplToJson(_$GenreStateImpl instance) =>
    <String, dynamic>{
      'genre': instance.genre,
      'isSelected': instance.isSelected,
    };
