import 'dart:convert';

import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:http/http.dart' as http;

class PersonajesBloc{
  final String _urlBase = 'swapi.dev';
  //final int _personajesPorPagina = 10;
  final int _paginaActual = 1;


  Stream<List<Personaje>> get getPersonajes async* {

    var url = Uri.https(_urlBase, 'api/people', {'page': '$_paginaActual'});

    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);

    if(response.statusCode == 200){
      final List<Personaje> personajes = [];

      for(Map<String, dynamic> per in decodedData['results']){
        final personaje = Personaje.fromJson(per);
        personajes.add(personaje);
        yield personajes;
      }
      
    }
  }
  
}