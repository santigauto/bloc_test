import 'package:bloc_test/bloc/conexion/conexion_bloc.dart';
import 'package:bloc_test/routes/page_routes.dart';
import 'package:bloc_test/themes/sw_theme.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MultiBlocProvider(
      providers: [
        /* BlocProvider(
      create: (context) =>
          PersonajesBloc(RepositoryProvider.of<PersonajesRepo>(context))
            ..add(LoadingPersonajesEvent())), */
        BlocProvider(create: (context) => ConexionBloc()),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: getApplicationRoutes(),
      initialRoute: '/',
      theme: swTheme(context),
    );
  }
}
