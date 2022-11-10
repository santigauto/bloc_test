
import 'package:bloc_test/models/vehiculo/vehiculo_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class VehiculosService {

  Future<List<Vehiculo>> getVehiculos(List<String> url) async {

    final List<Vehiculo> vehiculos = [];
    if(url.isNotEmpty){
      for (String element in url){
        try{
          final resp = await http.get(Uri.parse(element));
          final decodedData = json.decode(resp.body);
          final vehiculo = Vehiculo.fromJson(decodedData);
          vehiculos.add(vehiculo);
        }catch(e){
          // ignore: avoid_print
          print(e);
        }
      }
    } 
      return vehiculos;
  }
}