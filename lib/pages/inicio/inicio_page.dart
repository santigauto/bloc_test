import 'package:bloc_test/bloc/personajes_bloc.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/pages/inicio/widgets/carta.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Item 1'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: PersonajesBloc().getPersonajes,
        builder: (BuildContext context, AsyncSnapshot<List<Personaje>> snapshot) {
          List<Personaje> personajes = snapshot.data ?? [];
          return (snapshot.hasData)
            ?ListView.builder(
              itemCount: personajes.length,
              itemBuilder: (BuildContext context, int index) {
                return CartaWidget(personaje: personajes[index]);
              },
            ):const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}