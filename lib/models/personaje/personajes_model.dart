import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personajes_model.freezed.dart';
part 'personajes_model.g.dart';

@freezed
class Personajes with _$Personajes {
  const factory Personajes(
      {int? count,
      String? next,
      String? previous,
      List<Personaje>? results}) = _Personajes;

  factory Personajes.fromJson(Map<String, dynamic> json) =>
      _$PersonajesFromJson(json);
}
