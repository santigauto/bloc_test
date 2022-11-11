import 'package:bloc_test/bloc/conexion/conexion_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyDrawer extends StatefulWidget {
  final double width;
  final double height;

  const MyDrawer({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              _drawerProfile(
                context,
              ),
              _lista(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawerProfile(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: const ListTile(
            enabled: false,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.yellow, width: 2),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: SafeArea(
            child: Stack(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 20, right: 6),
                        title: Center(
                          child: Text(
                            'SWAPI',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _lista(context) {
    return Expanded(
        child: Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            BlocBuilder<ConexionBloc, ConexionState>(
              builder: (context, state) {
                return SwitchListTile(
                  onChanged: (value) {
                    BlocProvider.of<ConexionBloc>(context)
                        .add(SwitchConexionEvent(value));
                    print(value);
                    setState(() => null);
                  },
                  value: state.conexion,
                  title: const Text('Conexión'),
                  secondary: const Icon(Icons.wifi),
                  /* leading: Icon(Icons.wifi), */
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
