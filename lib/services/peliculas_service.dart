
import 'dart:async';

import 'package:bloc_test/models/pelicula/pelicula_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class PeliculasService {
  final List<String> url;

  bool flag = false;
  Stream<List<Pelicula>> get getPeliculas async* {

    final List<Pelicula> peliculas = [];
    if(url.isNotEmpty && flag == false){
      for (String element in url){
        try{
          final resp = await http.get(Uri.parse(element));
          final decodedData = json.decode(resp.body);
          final pelicula = Pelicula.fromJson(decodedData);
          peliculas.add(pelicula);
        }catch(e){
          // ignore: avoid_print
          print(e);
        }
      }
    } 
    flag = true;
      yield peliculas;
  }

  final StreamController<List<Pelicula>> _peliculasController = StreamController<List<Pelicula>>.broadcast();
  Stream<List<Pelicula>> get peliculasStream => _peliculasController.stream;
  PeliculasService(this.url){
    getPeliculas.listen((event) {
      _peliculasController.sink.add(event);
    });
  }
}