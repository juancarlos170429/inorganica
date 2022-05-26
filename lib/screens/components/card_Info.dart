import 'package:flutter/material.dart';

class Card_Info extends StatelessWidget {
  String simb1 = "simb1";
  String sigSimb1 = "+2";
  String simb2 = "simb2";
  String sigSimb2 = "+2";
  List resultado = ["", "", "", ""];
  String nc = "Oxido Aluminico";
  String ns = "oxido de aluminio(III)";
  String ni = "trioxido de dialuminico";
  String go = "sesquioxido de aluminio";
  Card_Info(this.simb1, this.sigSimb1, this.simb2, this.sigSimb2,
      this.resultado, this.nc, this.ns, this.ni, this.go);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      margin: const EdgeInsets.all(10.0),
      width: 350,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(simb1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        )),
                  ),
                  Container(
                    child: Text(sigSimb1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        )),
                  ),
                ],
              ),
              Text("  +  ",
                  style: TextStyle(
                    color: Color(0xff69BDBA),
                    fontSize: 25.0,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(simb2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        )),
                  ),
                  Container(
                    child: Text(sigSimb2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        )),
                  ),
                ],
              ),
              Text("  --->  ",
                  style: TextStyle(
                    color: Color(0xff69BDBA),
                    fontSize: 25.0,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Text(resultado[0],
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                        )),
                  ),
                  Container(
                    child: Text(resultado[1],
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12.0,
                        )),
                  ),
                  Container(
                    child: Text(resultado[2],
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                        )),
                  ),
                  Container(
                    child: Text(resultado[3],
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12.0,
                        )),
                  ),
                ],
              ),
            ],
          ),
          Text("N.C.: " + nc),
          Text("N.S.: " + ns),
          Text("N.I.: " + ni),
          Text("G.O.: " + go),
        ],
      ),
    );
  }
}
