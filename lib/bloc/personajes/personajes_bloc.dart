import 'package:bloc/bloc.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:bloc_test/services/personajes_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'personajes_event.dart';
part 'personajes_state.dart';

class PersonajesBloc extends Bloc<PersonajesEvent, PersonajesState> {
  /* final PersonajesRepo _personajesRepo; */
  PersonajesBloc(/* this._personajesRepo */)
      : super(const PersonajesInicialState()) {
    on<AddPersonajeEvent>((event, emit) async {
      emit(PersonajesAddState(pers: event.personajes));
    });
    on<FetchPersonajesEvent>(
        (event, emit) async => emit(PersonajesFetchState()));
    on<LoadingPersonajesEvent>((event, emit) => emit(LoadingPersonajesState()));
  }
}
