import 'package:bloc_test/models/especie/especie_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class EspeciesService {

  Future<List<Especie>> getEspecies(List<String> url) async {

    final List<Especie> especies = [];
    if(url.isNotEmpty){
      for (String element in url){
        try{
          final resp = await http.get(Uri.parse(element));
          final decodedData = json.decode(resp.body);
          final especie = Especie.fromJson(decodedData);
          especies.add(especie);
        }catch(e){
          // ignore: avoid_print
          print(e);
        }
      }
    } 
      return especies;
  }
}