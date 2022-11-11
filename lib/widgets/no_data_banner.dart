import 'package:flutter/material.dart';

class NoDataBanner extends StatelessWidget {
  const NoDataBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Nada por aquí...',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Image(
              image: AssetImage('assets/ewok.png'),
            ),
          ),
        ],
      ),
    );
  }
}
