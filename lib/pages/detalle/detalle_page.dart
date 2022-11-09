import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/pages/inicio/widgets/carta.dart';
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
            _profileAppBar(size, context, personaje),
            //make sliver list with profile info
            SliverList(
                delegate: SliverChildListDelegate([
              _description(context, size, personaje),
              SizedBox(height: size.height * 0.05),
              _details(context, size, personaje),
              SizedBox(height: size.height * 0.35),
            ]))
          ]),
        ],
      )),
    );
  }

  SliverAppBar _profileAppBar(
      Size size, BuildContext context, Personaje personaje) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      automaticallyImplyLeading: false,
      expandedHeight: size.height * 0.35,
      floating: false,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  return Text(
                    personaje.name ?? '',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: colorAnimation.value),
                  );
                })
          ],
        ),
        centerTitle: true,
        background: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(height: 9, color: const Color(0xFF555555)),
                Expanded(
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ],
            ),
            Hero(
              tag: personaje.name ?? '',
              child: Center(
                child: Container(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).appBarTheme.backgroundColor!,
                      width: 7,
                    ),
                  ),
                  child: GeneroAvatar(genero: personaje.gender ?? ''),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _description(BuildContext context, Size size, Personaje personaje) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.15),
      child: Center(child: Text(personaje.homeworld ?? '')),
    );
  }

  _details(BuildContext context, Size size, Personaje personaje) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: const Text('Fecha de nacimiento:'),
          trailing: Text(personaje.birthYear ?? 'no se sabe'),
        ),
        ListTile(
          title: Text('Color de pelo:'),
          trailing: Text(personaje.hairColor ?? ''),
        ),
        ListTile(
          title: Text('Color de piel:'),
          trailing: Text(personaje.skinColor ?? ''),
        ),
      ],
    );
  }
}
