import 'package:bloc_test/services/personajes_service.dart';
import 'package:flutter/material.dart';

class PaginadorWidget extends StatefulWidget {
  const PaginadorWidget({super.key});

  @override
  State<PaginadorWidget> createState() => _PaginadorWidgetState();
}

class _PaginadorWidgetState extends State<PaginadorWidget> {
  PersonajesRepo persBloc = PersonajesRepo();
  int actualPage = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return StreamBuilder(
        stream: persBloc.paginas,
        builder: (context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            int cantidad = snapshot.data ?? 0;
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {
                        //print('anterior');
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                  SizedBox(
                      width: size.width * 0.5,
                      height: 50,
                      child: PageView.builder(
                          controller: PageController(
                            initialPage: actualPage - 1,
                            viewportFraction: 0.2,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: cantidad,
                          pageSnapping: false,
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () => setState(() {}),
                                child: CircleAvatar(
                                  backgroundColor: (index + 1 == actualPage)
                                      ? Colors.yellow
                                      : Colors.black,
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                        color: (index + 1 == actualPage)
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {
                        setState(() {});
                        //print('siguiente');
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  )
                ]);
          } else {
            return Container();
          }
        });
  }
}
