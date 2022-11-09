import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personajes_event.dart';
part 'personajes_state.dart';
part 'personajes_bloc.freezed.dart';

class PersonajesBloc extends Bloc<PersonajesEvent, PersonajesState> {
  PersonajesBloc() : super(const _Initial()) {
    on<PersonajesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
