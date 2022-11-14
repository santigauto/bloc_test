part of 'personajes_bloc.dart';

@freezed
class PersonajesState with _$PersonajesState {
  const factory PersonajesState.initial() = _Initial;
  const factory PersonajesState.loading() = _Loading;
  const factory PersonajesState.loaded({
    required Personajes personajes,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory PersonajesState.error(String message) = _Error;
  const factory PersonajesState.searching() = _Searching;
  const factory PersonajesState.searched({
    required Personajes personajes,
    required bool hasReachedMax,  
  }) = _Searched;
  const factory PersonajesState.created() = _Created;
}
