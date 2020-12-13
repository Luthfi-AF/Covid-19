import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rujukan",
      home: Rujukan(),
    );
  }
}

class Rujukan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(bottom: 10),
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage("assets/rumahsakitrujukan.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage("assets/gedung.png"),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Rs A",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
