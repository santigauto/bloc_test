import 'dart:math' as math;
import 'package:bloc_test/pages/menu/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const MenuPage({required this.child});

  static MenuPageState? of(BuildContext context) =>
      context.findAncestorStateOfType<MenuPageState>();

  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool _canBeDragged = false;
  bool flag = false;
  int solicitudesPendientes = 0;
  //ImagenPerfil profilePic;
  late Animation rotation;
  late Animation<double> fade;

  @override
  void initState() {
    super.initState();

    //profilePic = ImagenPerfil(photoData: prefs.foto,radius: 30,);

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    rotation = Tween(begin: 0.0, end: math.pi / 2).animate(animationController);
    fade = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxSlide = size.width * 0.75;

    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      behavior: HitTestBehavior.translucent,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return Material(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: toggle,
                  child: Container(
                    width: size.width,
                    height: size.height,
                    color: Theme.of(context).backgroundColor,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(maxSlide * animationController.value, 0),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(-math.pi * animationController.value / 2),
                    alignment: Alignment.centerLeft,
                    child: widget.child,
                  ),
                ),
                Transform.translate(
                  offset: Offset(maxSlide * (animationController.value - 1), 0),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(math.pi / 2 * (1 - animationController.value)),
                    alignment: Alignment.centerRight,
                    child: MyDrawer(width: maxSlide, height: size.height),
                  ),
                ),
                Positioned(
                  top: 4.0 + MediaQuery.of(context).padding.top,
                  left: 4.0 + animationController.value * maxSlide,
                  child: IconButton(
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: fade,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: toggle,
                  ),
                ),
                /* Positioned(
                  bottom: -10.0 + MediaQuery.of(context).padding.top,
                  right: 10.0 - animationController.value * maxSlide,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      
                    ],
                  ),
                ),  */
              ],
            ),
          );
        },
      ),
    );
  }


  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed;
    bool isDragCloseFromRight = animationController.isCompleted;
    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta =
          details.primaryDelta! / MediaQuery.of(context).size.width * 0.75;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    double kMinFlingVelocity = 365.0;

    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }
}