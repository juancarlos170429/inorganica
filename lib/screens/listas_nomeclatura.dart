import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inorganica/models/cardInfo.dart';
import 'package:inorganica/screens/components/card_Info.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ListaNom extends StatefulWidget {
  String title = "oro";
  List<CardInfo> data = [];
  ListaNom(this.title, this.data, {Key? key}) : super(key: key);
  @override
  State<ListaNom> createState() => _ListaNomState();
}

class _ListaNomState extends State<ListaNom> {
  String title = '';
  List<CardInfo> lista = [];
  List<CardInfo> listaBusqueda = [];
  final TextEditingController input = TextEditingController(text: ' ');
  bool mostrarBusqueda = true;
  @override
  void initState() {
    myBanner.load();
    super.initState();
    title = widget.title;
    lista = widget.data;
    listaBusqueda = lista;
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
  void buscar(String valor) {
    setState(() {
      listaBusqueda = lista
          .where((elemento) =>
              elemento.name.toUpperCase().indexOf(valor.toUpperCase()) >= 0)
          .toList();
    });
  }

  void _buscar() {
    setState(() {
      listaBusqueda = lista
          .where((elemento) =>
              elemento.name.toUpperCase().indexOf(input.text.toUpperCase()) >=
              0)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffADE0DF),
      appBar: AppBar(
        backgroundColor: Color(0xff69BDBA),
        title: Text("datos de $title"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    color: Color(0xffADE0DF),
                    child: Stack(alignment: Alignment(1.0, 1.0), children: [
                      TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xff96d4d2),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Buscar elemento ...',
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
                          ? IconButton(
                              icon: Icon(Icons.search), onPressed: _buscar)
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
                Container(
                  height: 70,
                  width: 50,
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.info),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Leyenda',
                            style: TextStyle(
                              color: Color(0xff69BDBA),
                              fontSize: 20.0,
                            )),
                        content: Container(
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('N.C. = nomenclatura clásica '),
                              const Text('N.S. = nomenclatura STOK '),
                              const Text('N.I. = nomenclatura IUPAC '),
                              const Text('G.O. = segun el grado de oxidacion '),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK',
                                style: TextStyle(
                                  color: Color(0xff69BDBA),
                                  fontSize: 20.0,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: listaBusqueda.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      // child: Container(child: Text(listaBusqueda[index].nc)));
                      child: Card_Info(
                        listaBusqueda[index].simb1,
                        listaBusqueda[index].sigSimb1,
                        listaBusqueda[index].simb2,
                        listaBusqueda[index].sigSimb2,
                        listaBusqueda[index].resultado,
                        listaBusqueda[index].nc,
                        listaBusqueda[index].ns,
                        listaBusqueda[index].ni,
                        listaBusqueda[index].go,
                      ),
                    );
                  })),
          Container(
            height: 50,
            color: Color(0xffd9d8d9),
            child: AdWidget(ad: myBanner),
          ),
        ],
      ),
    );
  }
}
