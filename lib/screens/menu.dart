import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:inorganica/models/cardInfo.dart';
import 'package:inorganica/models/menu.dart';
import 'package:inorganica/screens/components/card_menu.dart';

import 'components/card_Info.dart';
import 'listas_nomeclatura.dart';

class MenuV extends StatefulWidget {
  @override
  _MenuVState createState() => _MenuVState();
}

class _MenuVState extends State<MenuV> {
  List<Menu> lista = [
    Menu('oxidos basicos', 'metal', 'O', '-2', 'oxido básico', [
      CardInfo(
          "aluminio",
          "Al",
          "+3",
          "O",
          "-2",
          ["Al", "2", "O", "3"],
          "óxido alumínico",
          "óxido de aluminio (III)",
          "trioxido de di aluminico",
          "sesquioxido de aluminio"),
      CardInfo(
          "litio",
          "Li",
          "+1",
          "O",
          "-2",
          ["Li", "2", "O", ""],
          "oxido litico",
          "oxido de litio (I)",
          "monoxido de di litio",
          "protoxido de litio"),
      CardInfo(
          "sodio",
          "Na",
          "+1",
          "O",
          "-2",
          ["Na", "2", "O", ""],
          "oxido sodico",
          "oxido de sodio (I)",
          "monoxido de di sodio",
          "protoxido de sodio"),
      CardInfo(
          "potasio",
          "K",
          "+1",
          "O",
          "-2",
          ["K", "2", "O", ""],
          "oxido potasico",
          "oxido de potasio (I)",
          "monoxido de di potasio",
          "protoxido de potasio"),
      CardInfo(
          "plata",
          "Ag",
          "+1",
          "O",
          "-2",
          ["Ag", "2", "O", ""],
          "oxido argentico",
          "oxido de plata (I)",
          "monoxido de di plata",
          "protoxido de plata"),
      CardInfo(
          "calcio",
          "Ca",
          "+2",
          "O",
          "-2",
          ["Ca", "", "O", ""],
          "oxido calcico",
          "oxido de calcio (II)",
          "monoxido de calcio",
          "No tiene"),
      CardInfo(
          "magnesio",
          "Mg",
          "+2",
          "O",
          "-2",
          ["Mg", "", "O", ""],
          "oxido magnesico",
          "oxido de magnesio (II)",
          "monoxido de magnesio",
          "No tiene"),
      CardInfo(
          "zinc",
          "Zn",
          "+2",
          "O",
          "-2",
          ["Zn", "", "O", ""],
          "oxido zincico",
          "oxido de zinc (II)",
          "monoxido de zinc",
          "No tiene"),
      CardInfo(
          "cobre",
          "Cu",
          "+1",
          "O",
          "-2",
          ["Cu", "2", "O", ""],
          "oxido cuproso",
          "oxido de cobre (I)",
          "monoxido de di cobre",
          "protoxido de cobre"),
      CardInfo(
          "cobre",
          "Cu",
          "+2",
          "O",
          "-2",
          ["Cu", "", "O", ""],
          "oxido cuprico",
          "oxido de cobre (II)",
          "monoxido de cobre",
          "No tiene"),
      CardInfo(
          "mercurio",
          "Hg",
          "+1",
          "O",
          "-2",
          ["Hg", "2", "O", ""],
          "oxido mercurioso",
          "oxido de mercurio (I)",
          "monoxido de di mercurio",
          "protoxido de mercurio"),
      CardInfo(
          "mercurio",
          "Hg",
          "+2",
          "O",
          "-2",
          ["Hg", "", "O", ""],
          "oxido mercurico",
          "oxido de mercurio (II)",
          "monoxido de mercurio",
          "No tiene"),
      CardInfo(
          "hierro",
          "Fe",
          "+2",
          "O",
          "-2",
          ["Fe", "", "O", ""],
          "oxido ferroso",
          "oxido de hierro (II)",
          "monoxido de hierro",
          "No tiene"),
      CardInfo(
          "hierro",
          "Fe",
          "+3",
          "O",
          "-2",
          ["Fe", "2", "O", "3"],
          "oxido ferrico",
          "oxido de hierro (III)",
          "trioxido de di hierro",
          "sesquioxido de hierro"),
      CardInfo(
          "cobalto",
          "Co",
          "+2",
          "O",
          "-2",
          ["Co", "", "O", ""],
          "oxido cobaltoso",
          "oxido de cobalto (II)",
          "monoxido de cobalto",
          "No tiene"),
      CardInfo(
          "cobalto",
          "Co",
          "+3",
          "O",
          "-2",
          ["Co", "2", "O", "3"],
          "oxido cobaltico",
          "oxido de cobalto (III)",
          "trioxido de di cobalto",
          "sesquioxido de cobalto"),
      CardInfo(
          "niquel",
          "Ni",
          "+2",
          "O",
          "-2",
          ["Ni", "", "O", ""],
          "oxido niqueloso",
          "oxido de niquel (II)",
          "monoxido de niquel",
          "No tiene"),
      CardInfo(
          "niquel",
          "Ni",
          "+3",
          "O",
          "-2",
          ["Ni", "2", "O", "3"],
          "oxido niquelico",
          "oxido de niquel (III)",
          "trioxido de di niquel",
          "sesquioxido de niquel"),
      CardInfo(
          "oro",
          "Au",
          "+1",
          "O",
          "-2",
          ["Au", "2", "O", ""],
          "oxido auroso",
          "oxido de oro (I)",
          "monoxido de di oro",
          "protoxido de oro"),
      CardInfo(
          "oro",
          "Au",
          "+3",
          "O",
          "-2",
          ["Au", "2", "O", "3"],
          "oxido aurico",
          "oxido de oro (III)",
          "trioxido de di oro",
          "sesquioxido de oro"),
    ]),
    Menu('Oxidos Acidos', 'no metal', 'O', '-2', 'oxido acido', [
      CardInfo(
          "boro",
          "B",
          "+3",
          "O",
          "-2",
          ["B", "2", "O", "3"],
          "anhidrido borico",
          "óxido de boro (III)",
          "trioxido de di boro",
          "sesquioxido de boro"),
      CardInfo(
          "carbono",
          "C",
          "+2",
          "O",
          "-2",
          ["C", "", "O", ""],
          "anhidrido carbonoso",
          "oxido de carbono (II)",
          "monoxido de carbono",
          "No tiene"),
      CardInfo(
          "carbono",
          "C",
          "+4",
          "O",
          "-2",
          ["C", "", "O", "2"],
          "anhidrido carbonico",
          "oxido de carbono (IV)",
          "dioxido de carbono",
          "No tiene"),
      CardInfo(
          "cromo",
          "Cr",
          "+3",
          "O",
          "-2",
          ["Cr", "2", "O", "3"],
          "anhidrido cromoso",
          "oxido de cromo (III)",
          "trioxido de di cromo",
          "sesquioxido de cromo"),
      CardInfo(
          "cromo",
          "Cr",
          "+6",
          "O",
          "-2",
          ["Cr", "", "O", "3"],
          "anhidrido cromico",
          "oxido de cromo (VI)",
          "trioxido de cromo",
          "No tiene"),
      CardInfo(
          "nitrogeno",
          "N",
          "+3",
          "O",
          "-2",
          ["N", "2", "O", "3"],
          "anhidrido nitroso",
          "oxido de nitrogeno (III)",
          "trioxido de di nitrogeno",
          "sesquioxido de nitrogeno"),
      CardInfo(
          "nitrogeno",
          "N",
          "+5",
          "O",
          "-2",
          ["N", "2", "O", "5"],
          "anhidrido nitrico",
          "oxido de nitrogeno (V)",
          "pentaoxido de di nitrogeno",
          "No tiene"),
      CardInfo(
          "fosforo",
          "P",
          "+3",
          "O",
          "-2",
          ["P", "2", "O", "3"],
          "anhidrido fosforoso",
          "oxido de fosforo (III)",
          "trioxido de di fosforo",
          "sesquioxido de fosforo"),
      CardInfo(
          "fosforo",
          "P",
          "+5",
          "O",
          "-2",
          ["P", "2", "O", "5"],
          "anhidrido fosforico",
          "oxido de fosforo (V)",
          "pentaoxido de di fosforo",
          "No tiene"),
      CardInfo(
          "azufre",
          "S",
          "+2",
          "O",
          "-2",
          ["S", "", "O", ""],
          "anhidrido hiposulfuroso",
          "oxido de azufre (II)",
          "monoxido de azufre",
          "No tiene"),
      CardInfo(
          "azufre",
          "S",
          "+4",
          "O",
          "-2",
          ["S", "", "O", "2"],
          "anhidrido sulfuroso",
          "oxido  de azufre (IV)",
          "dioxido de azufre",
          "No tiene"),
      CardInfo(
          "azufre",
          "S",
          "+6",
          "O",
          "-2",
          ["S", "", "O", "3"],
          "anhidrido sulfurico",
          "oxido de azufre (VI)",
          "trioxido de azufre",
          "No tiene"),
      CardInfo(
          "manganeso",
          "Mn",
          "+4",
          "O",
          "-2",
          ["Mn", "", "O", "2"],
          "anhidrido manganoso",
          "oxido de manganeso (IV)",
          "dioxido de manganeso",
          "No tiene"),
      CardInfo(
          "manganeso",
          "Mn",
          "+6",
          "O",
          "-2",
          ["Mn", "", "O", "3"],
          "anhidrido manganico",
          "oxido de manganeso (VI)",
          "trioxido de manganeso",
          "No tiene"),
      CardInfo(
          "manganeso",
          "Mn",
          "+7",
          "O",
          "-2",
          ["Mn", "2", "O", "7"],
          "anhidrido permanganico",
          "oxido de manganeso (VII)",
          "heptaoxido de di manganeso",
          "No tiene"),
      CardInfo(
          "cloro",
          "Cl",
          "+1",
          "O",
          "-2",
          ["Cl", "2", "O", "1"],
          "anhidrido hipocloroso",
          "oxido de cloro (I)",
          "monoxido de di cloro",
          "protoxido de cloro"),
      CardInfo(
          "cloro",
          "Cl",
          "+3",
          "O",
          "-2",
          ["Cl", "2", "O", "3"],
          "anhidrido cloroso",
          "oxido de cloro (III)",
          "trioxido de di cloro",
          "sesquioxido de cloro"),
      CardInfo(
          "cloro",
          "Cl",
          "+5",
          "O",
          "-2",
          ["Cl", "2", "O", "5"],
          "anhidrido clorico",
          "oxido de cloro (V)",
          "pentaoxido de di cloro",
          "No tiene"),
      CardInfo(
          "cloro",
          "Cl",
          "+7",
          "O",
          "-2",
          ["Cl", "2", "O", "7"],
          "anhidrido hiperclorico",
          "oxido de cloro (VII)",
          "heptaoxido de di cloro",
          "No tiene"),
      CardInfo(
          "bromo",
          "Br",
          "+1",
          "O",
          "-2",
          ["Br", "2", "O", ""],
          "anhidrido hiperbromoso",
          "oxido de bromo (I)",
          "monoxido de di bromo",
          "protoxido de bromo"),
    ]),
    Menu('hidroxidos', 'oxido basico', 'agua(H2O)', '', 'hidroxidos', [
      CardInfo(
          "aluminio",
          "Al2O3",
          "",
          "H2O",
          "",
          ["Al", "", "(OH)", "3"],
          "hidroxido alumínico",
          "hidroxido de aluminio (III)",
          "trioxidrilo de aluminio",
          "No tiene"),
      CardInfo(
          "litio",
          "Li2O",
          "",
          "H2O",
          "",
          ["Li", "", "(OH)", ""],
          "hidroxido litico",
          "hidroxido de litio (I)",
          "monoxidrilo de litio",
          "No tiene"),
      CardInfo(
          "sodio",
          "Na2O",
          "",
          "H2O",
          "",
          ["Na", "", "(OH)", ""],
          "hidroxido sodico",
          "hidroxido de sodio (I)",
          "monoxidrilo de sodio",
          "No tiene"),
      CardInfo(
          "potasio",
          "K2O",
          "",
          "H2O",
          "",
          ["K", "", "(OH)", ""],
          "hidroxido potasico",
          "hidroxido de potasio (I)",
          "monoxidrilo de potasio",
          "No tiene"),
      CardInfo(
          "plata",
          "Ag2O",
          "",
          "H2O",
          "",
          ["Ag", "", "(OH)", ""],
          "hidroxido argentico",
          "hidroxido de plata (I)",
          "monoxidrilo de plata",
          "No tiene"),
      CardInfo(
          "calcio",
          "CaO",
          "",
          "H2O",
          "",
          ["Ca", "", "(OH)", "2"],
          "hidroxido calcico",
          "hidroxido de calcio (II)",
          "dioxidrilo de calcio",
          "No tiene"),
      CardInfo(
          "magnesio",
          "MgO",
          "",
          "H2O",
          "",
          ["Mg", "", "(OH)", "2"],
          "hidroxido magnesico",
          "hidroxido de magnesio (II)",
          "dioxidrilo de magnesio",
          "No tiene"),
      CardInfo(
          "zinc",
          "ZnO",
          "",
          "H2O",
          "",
          ["Zn", "", "(OH)", "2"],
          "hidroxido zincico",
          "hidroxido de zinc (II)",
          "dioxidrilo de zinc",
          "No tiene"),
      CardInfo(
          "cobre",
          "Cu2O",
          "",
          "H2O",
          "",
          ["Cu", "", "(OH)", ""],
          "hidroxido cuproso",
          "hidroxido de cobre (I)",
          "dioxidrilo de cobre",
          "No tiene"),
      CardInfo(
          "cobre",
          "CuO",
          "",
          "H2O",
          "",
          ["Cu", "", "(OH)", "2"],
          "hidroxido cuprico",
          "hidroxido de cobre (II)",
          "dioxidrilo de cobre",
          "No tiene"),
      CardInfo(
          "mercurio",
          "Hg2O",
          "",
          "H2O",
          "",
          ["Hg", "", "(OH)", ""],
          "hidroxido mercurioso",
          "hidroxido de mercurio (I)",
          "monoxidrilo de mercurio",
          "No tiene"),
      CardInfo(
          "mercurio",
          "HgO",
          "",
          "H2O",
          "",
          ["Hg", "", "(OH)", "2"],
          "hidroxido mercurico",
          "hidroxido de mercurio (II)",
          "dioxidrilo de mercurio",
          "No tiene"),
      CardInfo(
          "hierro",
          "FeO",
          "",
          "H2O",
          "",
          ["Fe", "", "(OH)", "2"],
          "hidroxido ferroso",
          "hidroxido de hierro (II)",
          "dioxidrilo de hierro",
          "No tiene"),
      CardInfo(
          "hierro",
          "Fe2O3",
          "",
          "H2O",
          "",
          ["Fe", "", "(OH)", "3"],
          "hidroxido ferrico",
          "hidroxido de hierro (III)",
          "trioxidrilo de hierro",
          "No tiene"),
      CardInfo(
          "cobalto",
          "CoO",
          "",
          "H2O",
          "",
          ["Co", "", "(OH)", "2"],
          "hidroxido cobaltoso",
          "hidroxido de cobalto (II)",
          "dioxidrilo de cobalto",
          "No tiene"),
      CardInfo(
          "cobalto",
          "Co2O3",
          "",
          "H2O",
          "",
          ["Co", "", "(OH)", "3"],
          "hidroxido cobaltico",
          "hidroxido de cobalto (III)",
          "trioxidrilo de cobalto",
          "No tiene"),
      CardInfo(
          "niquel",
          "NiO",
          "",
          "H2O",
          "",
          ["Ni", "", "(OH)", "2"],
          "hidroxido niqueloso",
          "hidroxido de niquel (II)",
          "dioxidrilo de niquel",
          "No tiene"),
      CardInfo(
          "niquel",
          "Ni2O3",
          "",
          "H2O",
          "",
          ["Ni", "", "(OH)", "3"],
          "hidroxido niquelico",
          "hidroxido de niquel (III)",
          "trioxidrilo de niquel",
          "No tiene"),
      CardInfo(
          "oro",
          "Au2O",
          "",
          "H2O",
          "",
          ["Au", "", "(OH)", ""],
          "hidroxido auroso",
          "hidroxido de oro (II)",
          "dioxidrilo de oro",
          "No tiene"),
      CardInfo(
          "oro",
          "Au2O3",
          "",
          "H2O",
          "",
          ["Au", "", "(OH)", "3"],
          "hidroxido aurico",
          "hidroxido de oro (III)",
          "trioxidrilo de oro",
          "No tiene"),
    ]),
  ];
  List<Menu> listaBusqueda = [];
  final TextEditingController input = TextEditingController(text: '');
  bool mostrarBusqueda = true;
  @override
  void initState() {
    myBanner.load();
    super.initState();
    listaBusqueda = lista;
  }

  void buscar(String valor) {
    setState(() {
      listaBusqueda = lista
          .where((elemento) =>
              elemento.title.toUpperCase().indexOf(valor.toUpperCase()) >= 0)
          .toList();
    });
  }

  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-8398776666504336/7242161581',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) => print('Ad loaded.'),
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        // Dispose the ad here to free resources.
        ad.dispose();
        print('Ad failed to load: $error');
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) => print('Ad opened.'),
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) => print('Ad closed.'),
      // Called when an impression occurs on the ad.
      onAdImpression: (Ad ad) => print('Ad impression.'),
    ),
  );
  void _buscar() {
    setState(() {
      listaBusqueda = lista
          .where((elemento) =>
              elemento.title.toUpperCase().indexOf(input.text.toUpperCase()) >=
              0)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffADE0DF),
        body: Column(
          children: [
            Card(
              color: Color(0xffADE0DF),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(alignment: Alignment(1.0, 1.0), children: [
                  TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xff96d4d2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Buscar ...',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      controller: input,
                      onChanged: (String valor) {
                        setState(() {
                          buscar(valor);
                          if (valor.trim() != "") {
                            mostrarBusqueda = false;
                          } else {
                            mostrarBusqueda = true;
                          }
                        });
                      }),
                  mostrarBusqueda
                      ? IconButton(icon: Icon(Icons.search), onPressed: _buscar)
                      : IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            input.clear();
                            setState(() {
                              buscar("");
                              mostrarBusqueda = true;
                            });
                          })
                ]),
              ),
            ),
            Expanded(
                child: Card(
                    color: Color(0xffADE0DF),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listaBusqueda.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  print("object");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => new ListaNom(
                                            listaBusqueda[index].title,
                                            listaBusqueda[index].data),
                                      ));
                                }, // Handle your callback
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  margin: const EdgeInsets.only(right: 10.0),
                                  width: 350,
                                  height: 400,
                                  child: CardMenu(
                                      listaBusqueda[index].title,
                                      listaBusqueda[index].comp1,
                                      listaBusqueda[index].comp2,
                                      listaBusqueda[index].signocomp2,
                                      listaBusqueda[index].resultado),
                                ));
                          }),
                    ))),
            Container(
              height: 50,
              color: Color(0xffd9d8d9),
              child: AdWidget(ad: myBanner),
            ),
          ],
        ));
  }
}
