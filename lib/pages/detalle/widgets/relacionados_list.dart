import 'package:bloc_test/models/especie/especie_model.dart';
import 'package:bloc_test/models/personaje/personaje_model.dart';

import 'package:bloc_test/models/nave/nave_model.dart';
import 'package:bloc_test/services/especies_service.dart';
import 'package:bloc_test/services/naves_service.dart';

import 'package:bloc_test/models/pelicula/pelicula_model.dart';
import 'package:bloc_test/services/peliculas_service.dart';

import 'package:bloc_test/models/vehiculo/vehiculo_model.dart';
import 'package:bloc_test/services/vehiculos_service.dart';
import 'package:bloc_test/widgets/no_data_banner.dart';

import 'package:flutter/material.dart';

class Relacionados extends StatefulWidget {
  final Personaje personaje;
  const Relacionados({
    Key? key,
    required this.personaje,
  }) : super(key: key);

  @override
  State<Relacionados> createState() => _RelacionadosState();
}

class _RelacionadosState extends State<Relacionados> {
  late PeliculasService _peliculasService;

  late NavesService _navesService;

  final VehiculosService _vehiculosService = VehiculosService();

  final EspeciesService _especiesService = EspeciesService();

  List<String> listaEspecie = [];

  @override
  void initState() {
    _peliculasService = PeliculasService(widget.personaje.films ?? []);
    _navesService = NavesService(widget.personaje.starships ?? []);
    widget.personaje.species?.forEach((element) {
      listaEspecie.add(element.toString());
    });
    _vehiculosService.getVehiculos(widget.personaje.vehicles ?? []);
    _especiesService.getEspecies(listaEspecie);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Titulo RELACIONADOS

        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'RELACIONADOS',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        if (widget.personaje.vehicles != null) _vehiculosTile(),
        if (widget.personaje.starships != null) _navesTile(),
        if (widget.personaje.starships != null) _peliculasTile(),
        if (listaEspecie.isNotEmpty) _especiesTile(),
        if (widget.personaje.vehicles == null &&
            widget.personaje.starships == null &&
            widget.personaje.films == null &&
            widget.personaje.species == null)
          const NoDataBanner()
      ],
    );
  }

  FutureBuilder<List<Especie>> _especiesTile() {
    return FutureBuilder(
      future: _especiesService.getEspecies(listaEspecie),
      builder: (BuildContext context, AsyncSnapshot<List<Especie>> snapshot) {
        if (snapshot.hasData) {
          return (snapshot.data!.isNotEmpty)? ExpansionTile(
            leading: const Icon(Icons.public), //icono planeta
            title: const Text('Especies'),
            children: snapshot.data!
                .map((e) => ListTile(title: Text(e.name ?? '')))
                .toList(),
          ) : const SizedBox();
        } else {
          return const ListTile(
            leading: Icon(Icons.public),
              title: Text('Especies'), trailing: CircularProgressIndicator());
        }
      },
    );
  }

  StreamBuilder<List<Pelicula>> _peliculasTile() {
    return StreamBuilder(
      stream: _peliculasService.peliculasStream,
      builder: (BuildContext context, AsyncSnapshot<List<Pelicula>> snapshot) {
        if (snapshot.hasData) {
          return (snapshot.data!.isNotEmpty)?ExpansionTile(
            leading: const Icon(Icons.movie),
            title: const Text('Peliculas'),
            children: snapshot.data!
                .map((e) => ListTile(title: Text(e.title ?? '')))
                .toList(),
          ): const SizedBox();
        } else {
          return const ListTile(
            leading: Icon(Icons.movie),
              title: Text('Peliculas'), trailing: CircularProgressIndicator());
        }
      },
    );
  }

  StreamBuilder<List<Nave>> _navesTile() {
    return StreamBuilder(
      stream: _navesService.navesStream,
      builder: (BuildContext context, AsyncSnapshot<List<Nave>> snapshot) {
        if (snapshot.hasData) {
          return(snapshot.data!.isNotEmpty)? ExpansionTile(
            leading: const Icon(Icons.rocket),
            title: const Text('Naves'),
            children: snapshot.data!
                .map((e) => ListTile(title: Text(e.name ?? '')))
                .toList(),
          ):const SizedBox();
        } else {
          return const ListTile(
              leading: Icon(Icons.rocket),
              title: Text('Naves'), trailing: CircularProgressIndicator());
        }
      },
    );
  }

  FutureBuilder<List<Vehiculo>> _vehiculosTile() {
    return FutureBuilder(
      future: _vehiculosService.getVehiculos(widget.personaje.vehicles ?? []),
      builder: (BuildContext context, AsyncSnapshot<List<Vehiculo>> snapshot) {
        if (snapshot.hasData) {
          return (snapshot.data!.isNotEmpty)?ExpansionTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('Vehiculos'),
            children: snapshot.data!
                .map((e) => ListTile(title: Text(e.name ?? '')))
                .toList(),
          ): const SizedBox();
        } else {
          return const ListTile(
            leading: Icon(Icons.directions_car),
              title: Text('Vehiculos'), trailing: CircularProgressIndicator());
        }
      },
    );
  }
}
