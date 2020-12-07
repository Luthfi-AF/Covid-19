import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:"Detail Rujukan",
        home:DetailRujukan(),
    );
  }
}

class DetailRujukan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.arrow_back_rounded,color:Colors.white,size: 30.0),
        ),
        body:Container(
            margin: EdgeInsets.all(20),
            child: Column(
                children: <Widget>[
                    Card(
                        margin: EdgeInsets.only(bottom: 20),
                        elevation:5,
                        child:Column(
                            children: <Widget>[
                                Container(
                                    child: Image(
                                        image: AssetImage("assets/rs-mitra-keluarga-mitrakeluarga.com_ratio-16x9.jpg"),
                                        fit: BoxFit.cover,
                                    ),
                                ),
                            ],
                        ),
                    ),
                    Row(
                        children: <Widget>[
                            Image.asset("assets/gedung.png",
                            height: 30.0,
                            width: 30.0,),
                            Text(
                                "   Rs A",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),
                        ],
                    ),
                    Row(
                        children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                                "Informasi Rs A",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),),
                        ],
                    ),
                    Row(
                        children: <Widget>[
                            Icon(Icons.local_phone,color: Colors.black, size: 25.0,),
                            Text(
                                "   0987654321",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),
                        ],
                    ),
                    Row(
                        children: <Widget>[
                            Icon(Icons.location_on_sharp,color: Colors.black, size: 25.0,),
                            Text(
                                "   Bandung",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
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