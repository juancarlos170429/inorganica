import 'package:flutter/material.dart';
import 'package:inorganica/models/cardInfo.dart';

class Menu {
  String title = "title";
  String comp1 = "0";
  String comp2 = "O";
  String signocomp2 = "-2";
  String resultado = "resultado";
  List<CardInfo> data;
  Menu(this.title, this.comp1, this.comp2, this.signocomp2, this.resultado,
      this.data);
}
