part of 'conexion_bloc.dart';

@immutable
abstract class ConexionState {
  final bool conexion;

  const ConexionState({required this.conexion});
}

class InicialConexionState extends ConexionState {
  const InicialConexionState() : super(conexion: true);
}

class SwitchConexionState extends ConexionState {
  final bool value;
  const SwitchConexionState({required this.value}) : super(conexion: value);
}
