import 'package:flutter/material.dart';
import 'package:inorganica/screens/menu.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
