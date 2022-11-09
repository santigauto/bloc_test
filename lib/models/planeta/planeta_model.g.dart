// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planeta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Planeta _$$_PlanetaFromJson(Map<String, dynamic> json) => _$_Planeta(
      name: json['name'] as String?,
      rotationPeriod: json['rotationPeriod'] as String?,
      orbitalPeriod: json['orbitalPeriod'] as String?,
      diameter: json['diameter'] as String?,
      climate: json['climate'] as String?,
      gravity: json['gravity'] as String?,
      terrain: json['terrain'] as String?,
      surfaceWater: json['surfaceWater'] as String?,
      population: json['population'] as String?,
      residents: (json['residents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      created: json['created'] as String?,
      edited: json['edited'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PlanetaToJson(_$_Planeta instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rotationPeriod': instance.rotationPeriod,
      'orbitalPeriod': instance.orbitalPeriod,
      'diameter': instance.diameter,
      'climate': instance.climate,
      'gravity': instance.gravity,
      'terrain': instance.terrain,
      'surfaceWater': instance.surfaceWater,
      'population': instance.population,
      'residents': instance.residents,
      'films': instance.films,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
