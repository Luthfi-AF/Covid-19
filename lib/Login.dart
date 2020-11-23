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
                            hintText: 'Username',
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    TextField(
                        style: TextStyle(),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Password',
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            RaisedButton(
                                child: Text(
                                    'Login',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                    color: Colors.lightBlue,
                                    onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Daftar()),
                                        );
                                    },
                                ),
                                RaisedButton(
                                    child: Text(
                                        'Daftar',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                    color: Colors.lightBlue,
                                    onPressed: () {},
                                ),
                            ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Text(
                                    'Lupa Password?',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.lightBlue,
                                    ),
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}