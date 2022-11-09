// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personajes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Personajes _$$_PersonajesFromJson(Map<String, dynamic> json) =>
    _$_Personajes(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Personaje.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PersonajesToJson(_$_Personajes instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
