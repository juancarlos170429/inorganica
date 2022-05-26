import 'dart:ffi';

import 'package:flutter/material.dart';

class CardInfo {
  String name = "name";
  String simb1 = "simb1";
  String sigSimb1 = "+2";
  String simb2 = "simb2";
  String sigSimb2 = "+2";
  List resultado = ["", "", "", ""];
  String nc = "Oxido Aluminico";
  String ns = "oxido de aluminio(III)";
  String ni = "trioxido de dialuminico";
  String go = "sesquioxido de aluminio";
  CardInfo(this.name, this.simb1, this.sigSimb1, this.simb2, this.sigSimb2,
      this.resultado, this.nc, this.ns, this.ni, this.go);
}
