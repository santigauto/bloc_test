// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personaje_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Personaje _$$_PersonajeFromJson(Map<String, dynamic> json) => _$_Personaje(
      name: json['name'] as String?,
      height: json['height'] as String?,
      mass: json['mass'] as String?,
      hairColor: json['hair_color'] as String?,
      skinColor: json['skin_color'] as String?,
      eyeColor: json['eye_color'] as String?,
      birthYear: json['birth_year'] as String?,
      gender: json['gender'] as String?,
      homeworld: json['homeworld'] as String?,
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      species: json['species'] as List<dynamic>?,
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      starships: (json['starships'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      created: json['created'] as String?,
      edited: json['edited'] as String?,
      url: json['url'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_PersonajeToJson(_$_Personaje instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hairColor,
      'skin_color': instance.skinColor,
      'eye_color': instance.eyeColor,
      'birth_year': instance.birthYear,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
