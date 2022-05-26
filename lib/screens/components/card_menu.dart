import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  String title = "title";
  String comp1 = "0";
  String comp2 = "O";
  String signocomp2 = "-2";
  String resultado = "resultado";
  CardMenu(this.title, this.comp1, this.comp2, this.signocomp2, this.resultado);

  @override
  Widget build(BuildContext context) {
    final fila1 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0xff717373),
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
    final fila2 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 280,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              width: 8,
              color: Color(0xffd8d8d8),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(comp1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
              Text(
                "+",
                style: TextStyle(
                    color: Color(0xffADE0DF),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(comp2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        )),
                  ),
                  Container(
                    child: Text(signocomp2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                        )),
                  ),
                ],
              ),
              Text(
                "----------------------",
                style: TextStyle(
                    color: Color(0xffADE0DF),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(resultado,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  )),
            ],
          ),
        )
      ],
    );
    return Container(
      height: 120.0,
      width: 120.0,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        fila1,
        fila2,
      ]),
    );
  }
}
