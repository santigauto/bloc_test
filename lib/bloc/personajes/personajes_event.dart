part of 'personajes_bloc.dart';

@freezed
class PersonajesEvent with _$PersonajesEvent {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory PersonajesEvent.initial() = PersonajesInitialLoadStarted;
  const factory PersonajesEvent.getMore({
    @Default(false) bool isRefresh,
  }) = PersonajesGetMore;
  const factory PersonajesEvent.search(String query) = PersonajesSearch;
  const factory PersonajesEvent.create(String id, String dateTime, String characterName) =
      PersonajesCreate;
  
}