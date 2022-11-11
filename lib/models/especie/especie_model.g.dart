// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'especie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Especie _$$_EspecieFromJson(Map<String, dynamic> json) => _$_Especie(
      averageHeight: json['averageHeight'] as String?,
      averageLifespan: json['averageLifespan'] as String?,
      classification: json['classification'] as String?,
      created: json['created'] as String?,
      designation: json['designation'] as String?,
      edited: json['edited'] as String?,
      eyeColors: json['eyeColors'] as String?,
      hairColors: json['hairColors'] as String?,
      homeworld: json['homeworld'] as String?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      people:
          (json['people'] as List<dynamic>?)?.map((e) => e as String).toList(),
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      skinColors: json['skinColors'] as String?,
      url: json['url'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_EspecieToJson(_$_Especie instance) =>
    <String, dynamic>{
      'averageHeight': instance.averageHeight,
      'averageLifespan': instance.averageLifespan,
      'classification': instance.classification,
      'created': instance.created,
      'designation': instance.designation,
      'edited': instance.edited,
      'eyeColors': instance.eyeColors,
      'hairColors': instance.hairColors,
      'homeworld': instance.homeworld,
      'language': instance.language,
      'name': instance.name,
      'people': instance.people,
      'films': instance.films,
      'skinColors': instance.skinColors,
      'url': instance.url,
    };
