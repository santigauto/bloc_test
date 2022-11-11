part of 'personajes_bloc.dart';

abstract class PersonajesEvent extends Equatable {
  const PersonajesEvent();

  @override
  List<Object?> get props => [];
}

class LoadingPersonajesEvent extends PersonajesEvent {
  /* final Personajes personajes;
  const LoadingPersonajesEvent(this.personajes); */
  @override
  List<Object?> get props => [];
}

class FetchPersonajesEvent extends PersonajesEvent {
  final List<Personaje> personajes;
  const FetchPersonajesEvent(this.personajes);

  @override
  List<Object?> get props => [personajes];
}

class AddPersonajeEvent extends PersonajesEvent {
  final Personaje personaje;
  const AddPersonajeEvent(this.personaje);

  @override
  List<Object?> get props => [];
}
class LostConectionEvent extends PersonajesEvent {
  final Personajes personajes = const Personajes(count: 0, results: []);
  const LostConectionEvent();
}
