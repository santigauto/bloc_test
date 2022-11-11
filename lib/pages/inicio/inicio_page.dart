import 'package:bloc_test/bloc/conexion/conexion_bloc.dart';
import 'package:bloc_test/bloc/personajes/personajes_bloc.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/pages/inicio/widgets/formulario.dart';
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
        return BlocProvider(
      create: (context) =>
          PersonajesBloc(RepositoryProvider.of<PersonajesRepo>(context))
            ..add(LoadingPersonajesEvent()),
          child: Scaffold(
          appBar: _appBar(state.conexion),
          body: (state.conexion)
              ? _bodyWithConnection(size)
              : _bodyWithoutConnection(), // _lista(size),
          floatingActionButton:
              state.conexion ? _floatingButton(context) : null,
        ));
      },
    );
  }

  FloatingActionButton _floatingButton(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.person_add_alt_1_rounded,
        color: Colors.black,
      ),
      onPressed: () async{
        
        String? name = await formularioDialog(context);
        if (name != null) {
          //snackbar
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Personaje $name agregado'),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
    );
  }

  Widget _bodyWithConnection(Size size) {
    return BlocBuilder<PersonajesBloc, PersonajesState>(
        builder: (context, state)  {
          switch (state.runtimeType) {
            case PersonajesInicialState:
              return const NoDataBanner();
            case LoadingPersonajesState:
              return const Center(child: CircularProgressIndicator());
            case PersonajesFetchState:
            List<Personaje> pers = state.props[0] as List<Personaje>;
              return ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.offset ==
                        _scrollController.position.maxScrollExtent) {
                          //TODO cargar mas personajes

                          RepositoryProvider.of<PersonajesRepo>(context).getStreamPersonajes.listen((event) {
                            BlocProvider.of<PersonajesBloc>(context).add(
                              FetchPersonajesEvent(event.results!)
                            );
                          }); //me sobreescribe la lista, no adhiere
                    }
                  }),
                itemCount: pers.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartaWidget(personaje: pers[index]);
                },
                );
            case PersonajesAddState:
              return const Center(child: Text('PersonajesAddState'));
            default:
              return const Center(child: CircularProgressIndicator());
          }}
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
            padding: EdgeInsets.symmetric(horizontal: 20.0),
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
