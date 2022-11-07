//https://swapi.dev/api/people/?search=r2

/* Buscador de personajes */

import 'package:flutter/material.dart';

class Buscador extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return ListTile(
      title: Text(query),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/R2-D2_Droid.png/220px-R2-D2_Droid.png'),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}