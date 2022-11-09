import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehiculo_model.freezed.dart';
part 'vehiculo_model.g.dart';


@freezed
class Vehiculo with _$Vehiculo {
  @JsonSerializable(
    fieldRename: FieldRename.snake, // <---
  )
  const factory Vehiculo({
  String? cargoCapacity,
  String? consumables,
  String? costInCredits,
  String? created,
  String? crew,
  String? edited,
  String? length,
  String? manufacturer,
  String? maxAtmospheringSpeed,
  String? model,
  String? name,
  String? passengers,
  List<dynamic>? pilots,
  List<String>? films,
  String? url,
  String? vehicleClass,}) = _Vehiculo;

  factory Vehiculo.fromJson(Map<String, dynamic> json) => _$VehiculoFromJson(json);
}