import 'package:bloc/bloc.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:bloc_test/services/personajes_service.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'personajes_event.dart';
part 'personajes_state.dart';

class PersonajesBloc extends Bloc<PersonajesEvent, PersonajesState> {
  final PersonajesRepo _personajesRepo;
  PersonajesBloc(this._personajesRepo)
      : super(const PersonajesInicialState()) {

    on<LoadingPersonajesEvent>((event, emit){
      _personajesRepo.getStreamPersonajes;
      emit(LoadingPersonajesState());
      try{
        _personajesRepo.listaPersonajes.listen((event) {
          add(
           FetchPersonajesEvent(event)
          );
        
      });
      }catch (e) {
        emit(const PersonajesErrorState(pers: Personajes(count: 0, results: [])),);
      }
    }
    );
    on<FetchPersonajesEvent>((event, emit) async{
      emit(LoadingPersonajesState());
      try {
        emit(PersonajesFetchState(pers: event.personajes),);
      } catch (e) {
        emit(const PersonajesErrorState(pers: Personajes(count: 0, results: [])),);
      }
    }
    );
  }
}
