import 'package:flutter/material.dart';

import 'package:covid19/Daftar.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    TextField(
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
                         alignment: Alignment.centerRight,
                         child: Container(
                             margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                             child: Text(
                                 "FORGOT PASSWORD?",
                                 style: TextStyle(
                                     color: Color(0xFF03A9F4),
                                 ),
                             ),
                         ),
                     ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                                RaisedButton(
                                child: Text(
                                    'Login',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                    shape: StadiumBorder(),
                                    color: Colors.lightBlue,
                                    onPressed: () {},
                                ),
                                RaisedButton(
                                    child: Text(
                                        'Daftar',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                    shape: StadiumBorder(),
                                    color: Colors.lightBlue,
                                    onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Daftar()),
                                        );
                                    },
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}