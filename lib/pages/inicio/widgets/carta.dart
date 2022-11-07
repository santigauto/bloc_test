import 'package:bloc_test/models/personaje/personaje_model.dart';
import 'package:flutter/material.dart';

class CartaWidget extends StatefulWidget {
  final Personaje personaje;
  const CartaWidget({Key? key, required this.personaje}) : super(key: key);

  @override
  State<CartaWidget> createState() => _CartaWidgetState();
}

class _CartaWidgetState extends State<CartaWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
      ),
    );
    _animationController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    //dispose animation controller
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _animationController.forward();
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: size.height * 0.075 * (_animation.value),
            left: size.width * 0.05,
            child: Container(
              height: size.width * 0.2,
              width: size.width * 0.2,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            )),
        Container(
          width: size.width * 0.7,
          height: size.height * 0.2,
          margin: EdgeInsets.all(size.width * 0.05),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.personaje.name.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _genero(),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: size.height * 0.075 * (_animation.value),
          left: size.width * 0.05,
          child: CircleAvatar(
            radius: size.width * 0.1,
            child: Text(widget.personaje.name!.substring(0, 1)),
          ),
        ),
      ],
    );
  }

  Widget _genero() {
    return (widget.personaje.gender == "male")
        ? const Icon(
            Icons.male,
            color: Colors.blue,
          )
        : (widget.personaje.gender == "female")
            ? const Icon(
                Icons.female,
                color: Colors.pink,
              )
            : const Icon(
                Icons.psychology,
                color: Colors.grey,
              );
  }
}
