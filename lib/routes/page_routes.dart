

import 'package:bloc_test/pages/inicio/inicio_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => const InicioPage(),
  };
}