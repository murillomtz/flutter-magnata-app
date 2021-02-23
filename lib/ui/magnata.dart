import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  int _contadorGrana = 0;

  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  int _contadorGrana = 0;

  void _mandaGrana() {
   setState(() { //Salva e lança o valores atualizados
     _contadorGrana = _contadorGrana + 100;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: [
            Center(
              child: Text(
                "Fique Rico!",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9),
              ),
            ),
            Expanded(
                child: Center(
              child: Text(
                "\$ $_contadorGrana",
                style: TextStyle(
                    fontSize: 45.6,
                    color: _contadorGrana >= 1000 ? Colors.green : Colors.deepOrange,
                    fontWeight: FontWeight.w700),
              ),
            )),
            Expanded(
                child: Center(
              child: FlatButton(
                  onPressed: _mandaGrana,
                  color: Colors.lightGreen,
                  textColor: Colors.white70,
                  child: Text(
                    "Mais grana",
                    style: TextStyle(fontSize: 19.9),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
