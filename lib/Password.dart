import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Password',
        home: Password(),
    );
  }
}

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                        'Reset Password',
                        style:  TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                    TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Password Baru',
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Konfirmasi',
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    RaisedButton(
                            child: Text(
                                'Kirim',
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
        ),
    );
  }
}