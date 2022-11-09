import 'dart:async';

import 'package:bloc_test/models/nave/nave_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NavesService {
  final List<String> url;

  NavesService( this.url ){
    getNaves.listen((event) => _navesController.sink.add(event));
  }
  bool flag = false;
  Stream<List<Nave>> get getNaves async* {

    final List<Nave> naves = [];
    if(url.isNotEmpty && flag == false){
      for (String element in url){
        try{
          final resp = await http.get(Uri.parse(element));
          final decodedData = json.decode(resp.body);
          final nave = Nave.fromJson(decodedData);
          naves.add(nave);
        }catch(e){
          // ignore: avoid_print
          print(e);
        }
      }
    } 
    flag = true;
      yield naves;
  }

  final StreamController<List<Nave>> _navesController = StreamController<List<Nave>>.broadcast();
  Stream<List<Nave>> get navesStream => _navesController.stream;
}