import 'package:flutter/material.dart';

void main() => runApp(TanyaJawab());

class TanyaJawab extends StatefulWidget {
  @override
  _TanyaJawabState createState() => _TanyaJawabState();
}

class _TanyaJawabState extends State<TanyaJawab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
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
                            hintText: "Cari Dokter",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                    ),
                    SizedBox(
                        height: 25.0,
                    ),
                    Card(
                        elevation: 5,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                                ListTile(
                                    leading: Container(
                                        width: 50.0,
                                        height: 50.0,
                                            decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100.0),
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/dicky.jpg"),
                                                        fit: BoxFit.cover,
                                                    ),
                                                ),
                                            ),
                                    title: Text("Dr.Siapa Anda",style: TextStyle(fontSize:18.0,fontWeight: FontWeight.bold)),

                                    subtitle: Column(
                                        children: <Widget>[
                                            Row(
                                                children: <Widget>[
                                                    Text("Dokter Umum",
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                    )),
                                                ],
                                            ),
                                            Row(
                                                children: <Widget>[
                                                    Text("FREE",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        fontWeight: FontWeight.bold,
                                                    )),
                                                ],
                                            ),
                                        ],
                                    ),
                                ),
                        Align(
                         alignment: Alignment.bottomRight,
                         child: Container(
                             margin: EdgeInsets.all(10),
                             width:80,
                             height:30,
                             child: RaisedButton(
                                child: Text(
                                    'REQUEST',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                        ),
                                    ),
                                    shape: StadiumBorder(),
                                    color: Colors.lightBlue,
                                    onPressed: () {},
                                ),
                            ),
                         ),
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