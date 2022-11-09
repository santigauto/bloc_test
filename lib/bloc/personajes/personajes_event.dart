part of 'personajes_bloc.dart';

@freezed
class PersonajesEvent with _$PersonajesEvent {
  const factory PersonajesEvent.fetchCharacters() = PersonajesFetchEvent;
}
