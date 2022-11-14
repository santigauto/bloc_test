
import 'package:bloc_test/services/personajes_service.dart';
import 'package:bloc_test/widgets/custom_input.dart';
import 'package:flutter/material.dart';

Future<dynamic> formularioDialog(BuildContext context) {
  final nameController = TextEditingController();
  final idController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  _submit(){
    if(formKey.currentState!.validate()){
      PersonajesRepo().crearPersonaje(
        id: idController.text.toString(), 
        datetime: DateTime.now().toString(), 
        name: nameController.text);
      Navigator.pop(context, nameController.text);
    }
  }
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(backgroundColor: Colors.transparent, children: [
          Container(
            color: Colors.white,
            child: Form(
              key: formKey,
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
                        child: Text(
                          'Avistar personaje',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInput(
                      controller: nameController,
                      label: 'Nombre',
                      hint: 'Nombre'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInput(
                      controller: idController,
                      label: 'ID',
                      hint: 'ID',
                      inputType: TextInputType.number),
                  //boton guardar
                  ElevatedButton(
                      onPressed: () {
                        _submit();
                      },
                      child: const Text('Guardar'))
                ],
              ),
            ),
          )
        ]);
      });

      
}
