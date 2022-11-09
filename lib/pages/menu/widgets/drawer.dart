import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final double width;
  final double height;
  //final Widget profilePic;
  // ignore: use_key_in_widget_constructors
  const MyDrawer({required this.width, required this.height});

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
              Expanded(
                  child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: _lista(context))),
            ],
          ),
          Column(
            children: [
              const Expanded(child: IgnorePointer()),
              GestureDetector(
                child: Container(
                    color: const Color(0xFFD56B6B),
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height >
                            MediaQuery.of(context).size.width)
                        ? MediaQuery.of(context).size.height * 0.1
                        : MediaQuery.of(context).size.width * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Cerrar Sesión',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
                        )
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _drawerProfile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.yellow, width: 5),
          ),
      child: SafeArea(
        child: Stack(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                        ListTile(
                          contentPadding:
                              EdgeInsets.only(left: 20, right: 6),
                          title: Center(
                            child: Text(
                              'SWAPI',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                ]),
          ],
        ),
      ),
    );
  }

  Widget _lista(context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          SwitchListTile(
            onChanged: (value) {},
            value: false,
            title: const Text('Conexión'),
            secondary: const Icon(Icons.wifi),
            /* leading: Icon(Icons.wifi), */
          ),
        ],
      ),
    );
  }
}
