import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/pages/detalle/widgets/detalle_appbar.dart';
import 'package:bloc_test/pages/detalle/widgets/relacionados_list.dart';
import 'package:flutter/material.dart';

class DetallePage extends StatefulWidget {
  const DetallePage({Key? key}) : super(key: key);

  @override
  State<DetallePage> createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation colorAnimation;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 0));
    colorAnimation = ColorTween(begin: Colors.black, end: Colors.white).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      animationController.animateTo(scrollInfo.metrics.pixels / 350);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map;
    final Personaje personaje = arguments['personaje'];

    Size size = MediaQuery.of(context).size;
    return NotificationListener<ScrollNotification>(
      onNotification: _scrollListener,
      child: Scaffold(
          body: Stack(
        children: [
          CustomScrollView(controller: _scrollController, slivers: [
            //make sliver appbar with overflow in profile picture
            DetailAppBar(
                animationController: animationController,
                colorAnimation: colorAnimation,
                size: size,
                context: context,
                personaje: personaje),
            //make sliver list with profile info
            SliverList(
                delegate: SliverChildListDelegate([
              _details(context, size, personaje),
              SizedBox(height: size.height * 0.05),
              Relacionados(personaje: personaje),
            ]))
          ]),
        ],
      )),
    );
  }

  _details(BuildContext context, Size size, Personaje personaje) {
    return Column(
      children: [
        const Divider(),
        _detailTile('Año de nacimiento:', personaje.birthYear),
        _detailTile('Color de pelo:', personaje.hairColor),
        _detailTile('Color de piel:', personaje.skinColor),
        _detailTile('Color de ojos:', personaje.eyeColor),
        _detailTile('Genero:', personaje.gender)
      ],
    );
  }

  ListTile _detailTile(String title, String? detail) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Text(detail ?? 'no se sabe'),
    );
  }
}
