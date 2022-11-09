import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:bloc_test/pages/inicio/widgets/carta.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    Key? key,
    required this.animationController,
    required this.colorAnimation,
    required this.size,
    required this.context,
    required this.personaje,
  }) : super(key: key);

  final AnimationController animationController;
  final Animation colorAnimation;
  final Size size;
  final BuildContext context;
  final Personaje personaje;

  @override
  Widget build(BuildContext context) {
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
}