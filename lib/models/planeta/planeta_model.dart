
import 'package:freezed_annotation/freezed_annotation.dart';

part 'planeta_model.freezed.dart';
part 'planeta_model.g.dart';

@freezed
class Planeta with _$Planeta {
  const factory Planeta ({String ? name,
  String ? rotationPeriod,
  String ? orbitalPeriod,
  String ? diameter,
  String ? climate,
  String ? gravity,
  String ? terrain,
  String ? surfaceWater,
  String ? population,
  List<String> ? residents,
  List<String> ? films,
  String ? created,
  String ? edited,
  String ? url,}) = _Planeta;

  factory Planeta.fromJson(Map<String, dynamic> json) => _$PlanetaFromJson(json);

  
}
