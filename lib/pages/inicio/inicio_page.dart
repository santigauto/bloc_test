import 'package:bloc_test/pages/inicio/widgets/formulario.dart';
import 'package:bloc_test/services/personajes_service.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/widgets/carta.dart';
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add_alt_1_rounded, color: Colors.black,),
        onPressed: () {
          formularioDialog(context);
        },
      ),
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
              /* Positioned(
                bottom: 0,
                child: PaginadorWidget()) */ //
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  //funcion que espera el pop del dialog y guarda el personaje

  AppBar _appBar() {
    return AppBar(
      title: Stack(
        alignment: Alignment.center,
        children: [
          const Center(child: Text('SWAPI')),
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: Buscador(),
                );
              },
              icon: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
