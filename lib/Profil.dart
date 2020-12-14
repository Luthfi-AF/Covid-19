import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Profil",
        home: Profil(),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Profil"),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
                children: <Widget>[
                    Card(
                        color: Colors.grey,
                        child: Row(
                            children: <Widget>[
                                Container(padding: EdgeInsets.all(7),width:100.0,height:100.0, child: Image(image: AssetImage("assets/avatar.png"))),
                                Text("Username :",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                )),
                            ],
                        ),
                    ),
                ],
            ),
        ),
    );
  }
}