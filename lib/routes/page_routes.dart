import 'package:bloc_test/pages/detalle/detalle_page.dart';
import 'package:bloc_test/pages/inicio/inicio_page.dart';
import 'package:bloc_test/pages/menu/menu_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => const MenuPage(
        child:
            InicioPage() /* RepositoryProvider(
            create: (context) => PersonajesRepo(),
            child: const InicioPage(),
          ), */
        ),
    'detalle': (BuildContext context) => const DetallePage()
  };
}
