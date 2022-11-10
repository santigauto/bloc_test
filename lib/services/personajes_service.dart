import 'dart:async';
import 'dart:convert';

import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:http/http.dart' as http;

class PersonajesRepo {
  final String _urlBase = 'swapi.dev';
  final int _personajesPorPagina = 10;
  final int? paginaActual;

//SERVICIO FUTURE DE PERSONAJES EN CASO DE QUERER USAR PAGINADO
  Future<Personajes> getFuturePersonajes(int paginaActual) async {
    final url = Uri.https(_urlBase, 'api/people', {'page': '1'});
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final personajes = Personajes.fromJson(decodedData);
    return personajes;
  }
//SERVICIO STREAM DE PERSONAJES EN CASO DE QUERER USAR INFINITE SCROLL
  Stream<Personajes> get getStreamPersonajes async* {
    var url = Uri.https(_urlBase, 'api/people', {'page': '$paginaActual'});

    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);

    if (response.statusCode == 200) {
      final personajes = Personajes.fromJson(decodedData);

      yield personajes;
    }
  }

  Future<Personajes> getPersonajesByName(String name) async {
    final url = Uri.https(_urlBase, 'api/people', {'search': name});
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final personajes = Personajes.fromJson(decodedData);
    return personajes;
  }

  Future<bool> sendPersonaje(String characterName, String dateTime){
    final url = Uri.https(
      _urlBase, 'api/people', 
      {
        'name': characterName, 
        'date': DateTime.now().toString(),
        'id': 1 // TODO contorl de id
      });
    final resp = http.post(url);
    return resp.then((value) => value.statusCode == 200);
  }

  final StreamController<int> _paginasController = StreamController<int>();
  Stream<int> get paginas => _paginasController.stream;

  final StreamController<List<Personaje>> _personajesController =
      StreamController<List<Personaje>>.broadcast();
  Stream<List<Personaje>> get listaPersonajes => _personajesController.stream;

  PersonajesRepo({this.paginaActual = 2}) {
    getStreamPersonajes.listen((event) {
      int aux = (event.count! / _personajesPorPagina).ceil();
      _paginasController.add(aux);
      _personajesController.add(event.results ?? []);
    });
  }

  dispose() {
    _paginasController.close();
    _personajesController.close();
  }
}
