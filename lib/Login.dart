import 'package:flutter/material.dart';
import 'package:covid19/material.dart';

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
            padding: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                         alignment: Alignment.centerRight,
                         child: Container(
                             margin: EdgeInsets.only(bottom: 20),
                             child: Text(
                                 "FORGOT PASSWORD?",
                                 style: TextStyle(
                                     fontSize: 16.0,
                                     color: Color(0xFF03A9F4),
                                 ),
                             ),
                         ),
                     ),
                    Align(
                         alignment: Alignment.center,
                         child: Container(
                             margin: EdgeInsets.only(bottom: 10),
                             width:400,
                             height: 35,
                             child: RaisedButton(
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
                            ),
                         ),
                         Align(
                             alignment: Alignment.center,
                             child: Container(
                                 margin: EdgeInsets.only(bottom: 10),
                                 child: Text(
                                     "OR",
                                     style: TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.normal,
                                     ),
                                 ),
                             ),
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
                                     onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Daftar()),
                                        );
                                    },
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}