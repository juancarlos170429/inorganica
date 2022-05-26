import 'package:flutter/material.dart';
import 'package:inorganica/screens/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffADE0DF),
        appBar: AppBar(
            backgroundColor: Color(0xff69BDBA),
            title: Text(
              "nomenclatura inorganica ",
            )),
        body: MenuV(),
        //ListaElementos(),
      ),
    );
  }
}
