// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehiculo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehiculo _$$_VehiculoFromJson(Map<String, dynamic> json) => _$_Vehiculo(
      cargoCapacity: json['cargo_capacity'] as String?,
      consumables: json['consumables'] as String?,
      costInCredits: json['cost_in_credits'] as String?,
      created: json['created'] as String?,
      crew: json['crew'] as String?,
      edited: json['edited'] as String?,
      length: json['length'] as String?,
      manufacturer: json['manufacturer'] as String?,
      maxAtmospheringSpeed: json['max_atmosphering_speed'] as String?,
      model: json['model'] as String?,
      name: json['name'] as String?,
      passengers: json['passengers'] as String?,
      pilots: json['pilots'] as List<dynamic>?,
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      vehicleClass: json['vehicle_class'] as String?,
    );

Map<String, dynamic> _$$_VehiculoToJson(_$_Vehiculo instance) =>
    <String, dynamic>{
      'cargo_capacity': instance.cargoCapacity,
      'consumables': instance.consumables,
      'cost_in_credits': instance.costInCredits,
      'created': instance.created,
      'crew': instance.crew,
      'edited': instance.edited,
      'length': instance.length,
      'manufacturer': instance.manufacturer,
      'max_atmosphering_speed': instance.maxAtmospheringSpeed,
      'model': instance.model,
      'name': instance.name,
      'passengers': instance.passengers,
      'pilots': instance.pilots,
      'films': instance.films,
      'url': instance.url,
      'vehicle_class': instance.vehicleClass,
    };
