
import 'package:freezed_annotation/freezed_annotation.dart';

part 'especie_model.freezed.dart';
part 'especie_model.g.dart';

@freezed
class Especie with _$Especie {
  const factory Especie({String ? averageHeight,
  String ? averageLifespan,
  String ? classification,
  String ? created,
  String ? designation,
  String ? edited,
  String ? eyeColors,
  String ? hairColors,
  String ? homeworld,
  String ? language,
  String ? name,
  List<String> ? people,
  List<String> ? films,
  String ? skinColors,
  String ? url,}) = _Especie;

  factory Especie.fromJson(Map<String, dynamic> json) => _$EspecieFromJson(json);

}
