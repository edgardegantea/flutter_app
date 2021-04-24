import 'package:flutter/material.dart';
import 'package:flutter_app/api/api.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ArticuloProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articuloP = Provider.of<ArticuloProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Artículo')),
      body: ListView.builder(
        itemCount: articuloP.articulos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(articuloP.articulos[index].nombre),
            subtitle: Text(articuloP.articulos[index].descripcion),
          );
        }
      ),
    );
  }
}
