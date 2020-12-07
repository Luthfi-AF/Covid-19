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
                        elevation:5,
                        child:Column(
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
                        elevation:5,
                        child:Row(
                            children: <Widget>[
                                Container(margin:EdgeInsets.all(5),
                                child: Icon(Icons.local_hospital,size: 45.0),),
                                Text("Rs A",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                ),),
                            ],
                        ),
                    ),
                ],
            ),
        ),
    );
  }
}