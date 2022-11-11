import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conexion_event.dart';
part 'conexion_state.dart';

class ConexionBloc extends Bloc<ConexionEvent, ConexionState> {
  ConexionBloc() : super(const InicialConexionState()) {
    on<SwitchConexionEvent>((event, emit) {
      emit(SwitchConexionState(value: event.conexion));
    });
  }
}
