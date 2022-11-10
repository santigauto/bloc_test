
import 'package:bloc_test/widgets/custom_input.dart';
import 'package:flutter/material.dart';

Future<dynamic> formularioDialog(BuildContext context) {
    final _nameController = TextEditingController();
    return showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                backgroundColor: Colors.transparent,
                 children: [ 
                  Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.yellow,
                              width: 2,
                            ),
                          ),
                          child: const ListTile(
                            title: Center(
                              child: Text('Avistar personaje', style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        CustomInput(controller: _nameController, label: 'Nombre', hint: 'Nombre'),
                        const SizedBox(height: 10,),
                        //boton guardar
                        ElevatedButton(
                            onPressed: () {
                              //TODO guardar personaje
                              //vaciar controllers
                              Navigator.pop(context);

                            },
                            child: const Text('Guardar'))
                      ],
                    ),
                  )]);
            });
  }