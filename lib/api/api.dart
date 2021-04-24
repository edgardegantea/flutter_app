import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/articulo.dart';
import 'package:http/http.dart' as http;

class ArticuloProvider with ChangeNotifier {
  ArticuloProvider() {
    this.fetchTasks();
  }

  List<Articulo> _articulos = [];

  List<Articulo> get articulos {
    return [..._articulos];
  }

  fetchTasks() async {
    var uri = Uri.parse('http://localhost:8000/apis/v1/?format=json');
    final url = uri;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      _articulos =
          data.map<Articulo>((json) => Articulo.fromJson(json)).toList();
    }
  }
}
