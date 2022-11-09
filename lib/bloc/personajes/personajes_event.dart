part of 'personajes_bloc.dart';

abstract class PersonajesEvent extends Equatable {
  const PersonajesEvent();

  @override
  List<Object?> get props => [];
}

class FetchPersonajesEvent extends PersonajesEvent {
  final Personajes personajes;

  const FetchPersonajesEvent(this.personajes);

  @override
  List<Object?> get props => [personajes];
}

class AddPersonajeEvent extends PersonajesEvent {
  final Personajes personajes;

  const AddPersonajeEvent(this.personajes);
}
