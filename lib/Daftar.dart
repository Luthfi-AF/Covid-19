import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Daftar',
        home: Daftar(),
    );
  }
}

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    TextField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Nama",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    TextField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    TextField(
                        autofocus: false,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                     Align(
                         alignment: Alignment.center,
                         child: Container(
                             margin: EdgeInsets.only(bottom: 10),
                             width:400,
                             height: 35,
                             child: RaisedButton(
                                child: Text(
                                    'Daftar',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
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
    );
  }
}
