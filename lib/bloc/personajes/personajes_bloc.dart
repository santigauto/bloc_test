import 'package:bloc/bloc.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:equatable/equatable.dart';

part 'personajes_event.dart';

class PersonajesBloc extends Bloc<PersonajesEvent, Personajes?> {
  PersonajesBloc() : super(null) {
    on<FetchPersonajesEvent>((event, emit) async {
      emit(event.personajes);
    });
  }
}
