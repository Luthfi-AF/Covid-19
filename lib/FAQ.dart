import 'package:flutter/material.dart';

void main() => runApp(FAQ());

class FAQ extends StatefulWidget {
  @override
  _FAQ createState() => _FAQ();
}

class _FAQ extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Frequently Asked Questions"),
            ),
            body: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                children: <Widget>[
                    TextField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Cari Pertanyaan",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                    ),
                    SizedBox(
                        height: 25.0,
                    ),
                    Card(
                        margin: EdgeInsets.only(bottom:15),
                        elevation: 5,
                        child: Row(
                            children: <Widget>[
                                Container(padding: EdgeInsets.all(20),child: Text("Pertanyaan A",
                                style: TextStyle(
                                    fontSize: 18.0,
                                ))),
                            ],
                        ),
                    ),
                    Card(
                        margin: EdgeInsets.only(bottom:15),
                        elevation: 5,
                        child: Row(
                            children: <Widget>[
                                Container(padding: EdgeInsets.all(20),child: Text("Pertanyaan A",
                                style: TextStyle(
                                    fontSize: 18.0,
                                ))),
                            ],
                        ),
                    ),
                    Card(
                        margin: EdgeInsets.only(bottom:15),
                        elevation: 5,
                        child: Row(
                            children: <Widget>[
                                Container(padding: EdgeInsets.all(20),child: Text("Pertanyaan A",
                                style: TextStyle(
                                    fontSize: 18.0,
                                ))),
                            ],
                        ),
                    ),
                    ],
                ),
            ),
        ),
    );
  }
}