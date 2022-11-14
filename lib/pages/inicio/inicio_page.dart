import 'package:bloc_test/bloc/conexion/conexion_bloc.dart';
import 'package:bloc_test/bloc/personajes/personajes_bloc.dart';

import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/services/personajes_service.dart';

import 'package:bloc_test/pages/inicio/widgets/formulario.dart';
import 'package:bloc_test/widgets/carta.dart';
import 'package:bloc_test/widgets/buscador.dart';
import 'package:bloc_test/widgets/no_data_banner.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

/*     Future fetchData() async {

    if ( isLoading ) return;

    isLoading = true;
    setState(() {});

    await Future.delayed( const Duration( seconds: 3 ));

    final personajesBloc = BlocProvider.of<PersonajesBloc>(context);
    personajesBloc.add( PersonajesEventGetMore() );

    isLoading = false;
    setState(() {});

    if ( _scrollController.position.pixels + 100 <= _scrollController.position.maxScrollExtent ) return;

    _scrollController.animateTo(
      _scrollController.position.pixels + 120, 
      duration: const Duration( milliseconds: 300 ), 
      curve: Curves.fastOutSlowIn
    );
  }
     */

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<ConexionBloc, ConexionState>(
      builder: (context, state) {
        return BlocProvider(
      create: (context) =>
          PersonajesBloc(repository: RepositoryProvider.of<PersonajesRepo>(context))
            ..add(const PersonajesEvent.initial()),
          child: Scaffold(
          appBar: _appBar(state.conexion),
          body: (state.conexion)
              ? _bodyWithConnection(size, context)
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

  Widget _bodyWithConnection(Size size, BuildContext context) {
    return BlocBuilder<PersonajesBloc, PersonajesState>(
        builder: (context, state) => state.map(
          initial: (_) {BlocProvider.of<PersonajesBloc>(context).add(const PersonajesEvent.initial());
            return const NoDataBanner();
          }, 
          loading: (_) => const Center(child: CircularProgressIndicator()), 
          loaded: (state) => _lista(state.personajes.results!, size),
          error: (_) => const NoDataBanner(), 
          searching: (state) => const Center(child: CircularProgressIndicator()),
          searched: (state) => _lista(state.personajes.results!, size),
          created: (_) {
            BlocProvider.of<PersonajesBloc>(context).add(const PersonajesEvent.initial());
            return const NoDataBanner();
          },
    )
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
  _lista(List<Personaje>personajes, size){
    return RefreshIndicator(
      onRefresh: () async {
        final personajesBloc = BlocProvider.of<PersonajesBloc>(context);
        personajesBloc.add( const PersonajesEvent.initial() );
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: personajes.length,
        itemBuilder: (context, index) {
          final personaje = personajes[index];
          return CartaWidget(personaje: personaje);
        },
      ),
    );
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
