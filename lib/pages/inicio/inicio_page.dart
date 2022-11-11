import 'package:bloc_test/bloc/conexion/conexion_bloc.dart';
import 'package:bloc_test/bloc/personajes/personajes_bloc.dart';
import 'package:bloc_test/models/personaje/personajes_model.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/services/personajes_service.dart';
import 'package:bloc_test/widgets/carta.dart';
import 'package:bloc_test/widgets/buscador.dart';
import 'package:bloc_test/widgets/no_data_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int actualPage = 1;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<ConexionBloc, ConexionState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _appBar(state.conexion),
          body: (state.conexion)
              ? _bodyWithConnection()
              : _bodyWithoutConnection(), // _lista(size),
          floatingActionButton:
              state.conexion ? _floatingButton(context) : null,
        );
      },
    );
  }

  FloatingActionButton _floatingButton(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.person_add_alt_1_rounded,
        color: Colors.black,
      ),
      onPressed: () {
        print('llego');
        BlocProvider.of<PersonajesBloc>(context, listen: false).add(
            const AddPersonajeEvent(
                Personajes(count: 1, results: [Personaje(name: 'Santiago')])));
        //formularioDialog(context);
      },
    );
  }

  Widget _bodyWithConnection() {
    return BlocProvider(
      create: (context) =>
          PersonajesBloc(/* RepositoryProvider.of<PersonajesRepo>(context) */)
            ..add(LoadingPersonajesEvent()),
      child: BlocBuilder<PersonajesBloc, PersonajesState>(
          builder: (context, state) => (state is LoadingPersonajesState)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (state.personajes != null)
                  ? ListView.builder(
                      shrinkWrap: true,
                      controller: _scrollController
                        ..addListener(() {
                          if (_scrollController.offset ==
                              _scrollController.position.maxScrollExtent) {
                            //TODO use this controller to call personajes stream method
                          }
                        }),
                      itemCount: state.personajes!.results!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CartaWidget(
                            personaje: state.personajes!.results![index]);
                      },
                    )
                  : const NoDataBanner()),
    );
  }

  Widget _bodyWithoutConnection() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(
              width: 200,
              height: 250,
              child: Image(image: AssetImage('assets/jarjar.png'))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Esta aplicación definitivamente no maneja información de vital importancia para el imperio',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  /* _lista(Size size) {
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
                      //TODO use this controller to call personajes stream method
                    }
                  }),
                itemCount: personajes.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartaWidget(personaje: personajes[index]);
                },
              ),
              /* Positioned(
                bottom: 0,
                child: PaginadorWidget()) */ //ADD THIS BAR IF WANT PAGER
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  } */

  //funcion que espera el pop del dialog y guarda el personaje

  AppBar _appBar(bool connection) {
    return AppBar(
      title: Stack(
        alignment: Alignment.center,
        children: [
          const Center(child: Text('SWAPI')),
          if (connection)
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
