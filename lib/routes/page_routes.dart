import 'package:bloc_test/pages/detalle/detalle_page.dart';
import 'package:bloc_test/pages/inicio/inicio_page.dart';
import 'package:bloc_test/pages/menu/menu_page.dart';
import '../services/personajes_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart'; 

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => MenuPage(
        child: RepositoryProvider(
            create: (context) => PersonajesRepo(),
            child: const InicioPage(),
          ),
        ),
    'detalle': (BuildContext context) => const DetallePage()
  };
}
