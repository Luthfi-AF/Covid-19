import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Edukasi",
        home: Edukasi(),
    );
  }
}

class Edukasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.all(20),
            child: ListView(
                children: <Widget>[
                    Container(
                        width: 290,
                        height: 174,
                        child:  Image(
                            image: AssetImage("assets/bukuedukasi.jpg"),
                            fit: BoxFit.cover,
                        ),
                    ),
                    Container(
                    margin: EdgeInsets.only(top:20),
                    child: Text("Di fitur ini,banyak referensi edukasi untuk menambah pengetahuan anda tentang Covid 19",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    )),
                  ),
                  Container(
                      margin: EdgeInsets.only(top:10,bottom: 10),
                      child: Text("Materi Terkini",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                      )),
                  ),
                    Card(
                      elevation:5,
                      child: Row(
                          children: <Widget>[
                              Container(padding: EdgeInsets.all(3),width:60.0,height:60.0, child: Image(image: AssetImage("assets/edukasi1.jpg"))),
                              Text("Apa itu 3M?",
                              style: TextStyle(
                                  fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              )),
                          ],
                      ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top:10),
                      child: Text("Video Terkini",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                      )),
                  ),
            Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                  Image.asset("assets/covid.jpg"),
                ListTile(
                  title: const Text('Card title 1'),
                ),
              ],
            ),
          ),
                ],
            ),
        ),
    );
  }
}
