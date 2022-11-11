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
  const FetchPersonajesEvent();

  @override
  List<Object?> get props => [];
}

class AddPersonajeEvent extends PersonajesEvent {
  final Personajes personajes;

  const AddPersonajeEvent(this.personajes);
}

class LostConectionEvent extends PersonajesEvent {
  final Personajes personajes = const Personajes(count: 0, results: []);
  const LostConectionEvent();
}
