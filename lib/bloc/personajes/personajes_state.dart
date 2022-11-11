part of 'personajes_bloc.dart';

@immutable
abstract class PersonajesState extends Equatable {

  const PersonajesState();
}
//TODO STATES INICIAL, LOADING, LOADED

class PersonajesInicialState extends PersonajesState {
  const PersonajesInicialState() : super();
  @override
  List<Object?> get props => [];
}

class LoadingPersonajesState extends PersonajesState {
  /*  final Personajes pers;
  const LoadingPersonajesState({required this.pers}) : super(personajes: pers); */
  @override
  List<Object?> get props => [];
}
class PersonajesFetchState extends PersonajesState {
  final List<Personaje> pers;
  const PersonajesFetchState({required this.pers}) : super();
  @override
  List<Object?> get props => [pers];
}

//error state
class PersonajesErrorState extends PersonajesState {
  final Personajes pers;
  const PersonajesErrorState({required this.pers}) : super();
  @override
  List<Object?> get props => [pers];
}
class PersonajesAddState extends PersonajesState {
  final String error;
  const PersonajesAddState(this.error) : super();
  @override
  List<Object?> get props => [error];
}


