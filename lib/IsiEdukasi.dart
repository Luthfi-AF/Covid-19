import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Isi Edukasi",
        home: IsiEdukasi(),
    );
  }
}

class IsiEdukasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
                children:<Widget>[
                    Text("Apa itu 3M",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.center),
                    Column(
                        children: <Widget>[
                    Text("Penyebaran virus Corona atau COVID-19 di Indonesia harus ditekan semaksimal mungkin. Salah satu cara utamanya adalah dengan menerapkan perilaku hidup disiplin. Maka, selalu #ingatpesanibu dengan melakukan langkah 3M sebagai upaya mencegah sekaligus memutus rantai penularan COVID-19. Apa itu 3M?.Membiasakan dan mewajibkan diri untuk mematuhi protokol kesehatan merupakan salah satu kunci agar virus COVID-19 dapat ditekan penyebarannya. Namun, dibutuhkan perilaku disiplin dari dari sendiri, juga sangat perlu untuk dilakukan secara kolektif dengan penuh kesadaran."),
                        ],
                    ),
                ],
            ),
        ),
    );
  }
}