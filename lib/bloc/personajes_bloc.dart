import 'dart:async';
import 'dart:convert';

import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:http/http.dart' as http;

class PersonajesRepo {
  final String _urlBase = 'swapi.dev';
  final int _personajesPorPagina = 10;
  final int? paginaActual;

  Stream<Personajes> get getPersonajes async* {
    var url = Uri.https(_urlBase, 'api/people', {'page': '$paginaActual'});

    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);

    if (response.statusCode == 200) {
      final personajes = Personajes.fromJson(decodedData);

      yield personajes;
    }
  }

  final StreamController<int> _paginasController = StreamController<int>();
  Stream<int> get paginas => _paginasController.stream;

  final StreamController<List<Personaje>> _personajesController =
      StreamController<List<Personaje>>.broadcast();
  Stream<List<Personaje>> get listaPersonajes => _personajesController.stream;

  PersonajesRepo({this.paginaActual = 2}) {
    getPersonajes.listen((event) {
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
