part of 'conexion_bloc.dart';

abstract class ConexionEvent extends Equatable {
  const ConexionEvent();

  @override
  List<Object?> get props => [];
}

class SwitchConexionEvent extends ConexionEvent {
  final bool conexion;

  const SwitchConexionEvent(this.conexion);

  @override
  List<Object?> get props => [super.props];
}
