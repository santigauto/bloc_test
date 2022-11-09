import 'package:freezed_annotation/freezed_annotation.dart';

part 'personaje_model.freezed.dart';
part 'personaje_model.g.dart';

@freezed
class Personaje with _$Personaje {
  @JsonSerializable(
    fieldRename: FieldRename.snake, // <---
  )
  const factory Personaje({
    String? name,
    String? height,
    String? mass,
    String? hairColor,
    String? skinColor,
    String? eyeColor,
    String? birthYear,
    String? gender,
    String? homeworld,
    List<String>? films,
    List<dynamic>? species,
    List<String>? vehicles,
    List<String>? starships,
    String? created,
    String? edited,
    String? url,
  }) = _Personaje;

  factory Personaje.fromJson(Map<String, dynamic> json) =>
      _$PersonajeFromJson(json);
}
