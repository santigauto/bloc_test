
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nave_model.freezed.dart';
part 'nave_model.g.dart';

@freezed
class Nave with _$Nave {

  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory Nave({
    String? mglt,
    String? cargoCapacity,
    String? consumables,
    String? costInCredits,
    String? created,
    String? crew,
    String? edited,
    String? hyperdriveRating,
    String? length,
    String? manufacturer,
    String? maxAtmospheringSpeed,
    String? model,
    String? name,
    String? passengers,
    List<String>? films,
    List<dynamic>? pilots,
    String? starshipClass,
    String? url,
  }) = _Nave;

  factory Nave.fromJson(Map<String, dynamic> json) => _$NaveFromJson(json);

}
