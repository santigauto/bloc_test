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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _animationController.forward();
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'detalle',
          arguments: {'personaje': widget.personaje}),
      child: SizedBox(
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: size.height * 0.05 * (_animation.value),
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
              height: size.height * 0.15,
              margin: EdgeInsets.all(size.width * 0.05),
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3.0, color: Colors.yellow),
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
                      color: Color(0xFFf5f4f6),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.05 * (_animation.value),
              left: size.width * 0.05,
              child: Hero(
                tag: widget.personaje.name ?? '',
                child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: size.width * 0.1,
                    child: GeneroAvatar(genero: widget.personaje.gender ?? '')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GeneroAvatar extends StatelessWidget {
  const GeneroAvatar({
    Key? key,
    required this.genero,
  }) : super(key: key);

  final String genero;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
          image: (genero == "male")
              ? const AssetImage('assets/icon-male.png')
              : (genero == "female")
                  ? const AssetImage('assets/icon-female.png')
                  : const AssetImage('assets/icon-robot.png')),
    );
  }
}
