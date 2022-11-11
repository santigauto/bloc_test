part of 'personajes_bloc.dart';

@immutable
abstract class PersonajesState extends Equatable {
  final Personajes? personajes;

  const PersonajesState({this.personajes});
}
//TODO STATES INICIAL, LOADING, LOADED

class PersonajesInicialState extends PersonajesState {
  const PersonajesInicialState() : super(personajes: null);
  @override
  List<Object?> get props => [];
}

class LoadingPersonajesState extends PersonajesState {
  /*  final Personajes pers;
  const LoadingPersonajesState({required this.pers}) : super(personajes: pers); */
  @override
  List<Object?> get props => [];
}

class PersonajesAddState extends PersonajesState {
  final Personajes pers;
  const PersonajesAddState({required this.pers}) : super(personajes: pers);
  @override
  List<Object?> get props => [];
}

class PersonajesFetchState extends PersonajesState {
  @override
  List<Object?> get props => [];
}
