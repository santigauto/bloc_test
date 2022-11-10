import 'package:flutter/material.dart';

class GeneroAvatar extends StatelessWidget {
  const GeneroAvatar({
    Key? key,
    required this.genero,
  }) : super(key: key);

  final String genero;

  @override
  Widget build(BuildContext context) {
    ImageProvider image;
    switch (genero) {
      case 'male':
        image = const AssetImage('assets/icon-male.png');
        break;
      case 'female':
        image = const AssetImage('assets/icon-female.png');
        break;
      case 'hermaphrodite':
        image = const AssetImage('assets/icon-hermaphrodite.png');
        break;
      default: image = const AssetImage('assets/icon-robot.png');
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
          image: image)
    );
  }
}