// Generated by https://quicktype.io

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pelicula_model.freezed.dart';
part 'pelicula_model.g.dart';

@freezed
class Pelicula with _$Pelicula {
  const factory Pelicula({String ? title,
  int ? episodeId,
  String ? openingCrawl,
  String ? director,
  String ? producer,
  String ? releaseDate,
  List<String> ? characters,
  List<String> ? planets,
  List<String> ? starships,
  List<String> ? vehicles,
  List<String> ? species,
  String ? created,
  String ? edited,
  String ? url,}) = _Pelicula;

  factory Pelicula.fromJson(Map<String, dynamic> json) => _$PeliculaFromJson(json);

}