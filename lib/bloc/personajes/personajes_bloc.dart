import 'package:bloc/bloc.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:bloc_test/services/personajes_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personajes_event.dart';
part 'personajes_state.dart';
part 'personajes_bloc.freezed.dart';

class PersonajesBloc extends Bloc<PersonajesEvent, PersonajesState> {
  PersonajesRepo repository;
  PersonajesBloc({required this.repository}) : super(const _Initial()) {
    on<PersonajesEvent>((event, emit) {
      event.map( 
        started: (e) async* {
          print('------------entra en el mapeo------------');
          yield const _Loading();
          try {
            final personajes = await repository.getFuturePersonajes();
            yield _Loaded(personajes: personajes, hasReachedMax: false);
          } catch (e) {
            yield _Error(e.toString());
          }
        },
        getMore: (e) async* {
          final currentState = state;
          if (currentState is _Loaded) {
            try {
              if (currentState.hasReachedMax) return;
              final personajes = await repository.getFuturePersonajes();
              yield personajes.results!.isEmpty
                  ? currentState.copyWith(hasReachedMax: true)
                  : _Loaded(
                      personajes: currentState.personajes.copyWith(
                        results: currentState.personajes.results! + personajes.results!,
                      ),
                      hasReachedMax: false,
                    );
            } catch (e) {
              yield _Error(e.toString());
            }
          }
        },
        search: (e) async* {
          yield _Searching();
          try {
            final personajes = await repository.getFuturePersonajes();
            yield _Searched(personajes: personajes, hasReachedMax: false);
          } catch (e) {
            yield _Error(e.toString());
          }
        },
        create: (e) async* {
          yield _Loading();
          try {
            await repository.crearPersonaje(datetime: e.dateTime, id: e.id, name: e.characterName);
            yield _Created();
          } catch (e) {
            yield _Error(e.toString()); 
          }
        },
      );
    });
  }
}