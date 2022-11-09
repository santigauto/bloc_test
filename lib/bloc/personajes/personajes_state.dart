part of 'personajes_bloc.dart';

@freezed
class PersonajesState with _$PersonajesState {
  const factory PersonajesState.initial() = _Initial;
  const factory PersonajesState.loading() = _Loading;
  const factory PersonajesState.loaded(int num) = _Loaded;
}
