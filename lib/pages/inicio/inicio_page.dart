import 'package:bloc_test/services/personajes_service.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/pages/inicio/widgets/carta.dart';
import 'package:bloc_test/widgets/buscador.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final persBloc = PersonajesRepo();
  int actualPage = 1;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    persBloc.getStreamPersonajes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(),
      body: _lista(size),
    );
  }

  @override
  void dispose() {
    persBloc.dispose();
    super.dispose();
  }

  StreamBuilder<List<Personaje>> _lista(Size size) {
    return StreamBuilder(
      stream: persBloc.listaPersonajes,
      builder: (BuildContext context, AsyncSnapshot<List<Personaje>> snapshot) {
        if (snapshot.hasData) {
          List<Personaje> personajes = snapshot.data ?? [];
          return Stack(
            alignment: Alignment.center,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.offset ==
                        _scrollController.position.maxScrollExtent) {
                      print('fin');
                    }
                  }),
                itemCount: personajes.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartaWidget(personaje: personajes[index]);
                },
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Center(child: Text('Inicio')),
      actions:  [
        IconButton(
          onPressed: (){
            //search delegate
            showSearch(context: context, delegate: Buscador());
          }, 
          icon: const Icon(Icons.search, color: Colors.white,)
        )],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    );
  }

}
