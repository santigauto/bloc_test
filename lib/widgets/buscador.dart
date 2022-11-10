//https://swapi.dev/api/people/?search=r2

/* Buscador de personajes */

import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:bloc_test/widgets/carta.dart';
import 'package:bloc_test/services/personajes_service.dart';
import 'package:flutter/material.dart';

class Buscador extends SearchDelegate {

  @override
  // ignore: overridden_fields
  final String? searchFieldLabel;

  Buscador({this.searchFieldLabel = 'Buscar...'});

  //override theme del buscador

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        headline6: theme.textTheme.headline6!.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear, color: (query == '') ? Colors.transparent: Colors.red,),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.yellow),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    query = query.trim();

    return FutureBuilder<Personajes>(
      future: PersonajesRepo().getPersonajesByName(query),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return const Center(child: Text('Error al cargar los datos'));
        }
        if (snapshot.hasData) {
          final personajes = snapshot.data?.results ?? [];
          return (personajes.isNotEmpty) ? ListView.builder(
            itemCount: personajes.length,
            itemBuilder: (context, index) {
              return CartaWidget(personaje: personajes[index]);
            },
          ) : const ListTile(
            title: Text('No se encontraron resultados'),
          ); 
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}