// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pelicula_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Pelicula _$$_PeliculaFromJson(Map<String, dynamic> json) => _$_Pelicula(
      title: json['title'] as String?,
      episodeId: json['episodeId'] as int?,
      openingCrawl: json['openingCrawl'] as String?,
      director: json['director'] as String?,
      producer: json['producer'] as String?,
      releaseDate: json['releaseDate'] as String?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      planets:
          (json['planets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      starships: (json['starships'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      created: json['created'] as String?,
      edited: json['edited'] as String?,
      url: json['url'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_PeliculaToJson(_$_Pelicula instance) =>
    <String, dynamic>{
      'title': instance.title,
      'episodeId': instance.episodeId,
      'openingCrawl': instance.openingCrawl,
      'director': instance.director,
      'producer': instance.producer,
      'releaseDate': instance.releaseDate,
      'characters': instance.characters,
      'planets': instance.planets,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'species': instance.species,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
