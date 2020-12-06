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
            padding: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                        'Reset Password',
                        style:  TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                    ),
                    TextField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Password Baru',
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
                            labelText: 'Konfirmasi',
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
                                    'Kirim',
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