import 'package:covid19/DataWilayah.dart';
import 'package:covid19/Edukasi.dart';
import 'package:covid19/Network.dart';
import 'package:covid19/Rujukan.dart';
import 'package:covid19/TanyaJawab.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future data;

  @override
  void initState() {
    super.initState();
    data = getData();
    // data.then((value) => {print(value[3]["attributes"])});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment(-0.95, 0.80),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                    stops: [
                                  0.1,
                                  0.5,
                                  0.7,
                                  0.9
                                ],
                                    colors: [
                                  Colors.white10,
                                  Colors.grey[200],
                                  Colors.grey[300],
                                  Colors.grey[400]
                                ])),
                            child: Text(
                              'Update Terkini ',
                              style: GoogleFonts.poppins(fontSize: 17),
                            ),
                          )),
                      FutureBuilder(
                          future: data,
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData) {
                              return Container(
                                  child: Card(
                                elevation: 4,
                                child: SizedBox(
                                  height: 100,
                                  width: 380,
                                  child: DataTable(
                                    columns: [
                                      DataColumn(
                                          label: Text(
                                        'Total Kasus',
                                        style: GoogleFonts.poppins(
                                          backgroundColor: Colors.red[300],
                                        ),
                                      )),
                                      DataColumn(
                                          label: Text(
                                        'Sembuh',
                                        style: GoogleFonts.poppins(
                                            backgroundColor: Colors.green[300]),
                                      )),
                                      DataColumn(
                                          label: Text(
                                        'Meninggal',
                                        style: GoogleFonts.poppins(
                                            backgroundColor: Colors.grey[300]),
                                      )),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(Center(
                                              child: Text(
                                                  "${snapshot.data[3]["attributes"]["Kasus_Posi"]}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 15)))),
                                          DataCell(Center(
                                              child: Text(
                                                  "${snapshot.data[3]["attributes"]["Kasus_Semb"]}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 15)))),
                                          DataCell(Center(
                                              child: Text(
                                                  "${snapshot.data[3]["attributes"]["Kasus_Meni"]}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 15)))),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ));
                            } else {
                              return CircularProgressIndicator();
                            }
                          }),
                      Align(
                          alignment: Alignment(-0.90, 0.20),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                    stops: [
                                  0.1,
                                  0.5,
                                  0.7,
                                  0.9
                                ],
                                    colors: [
                                  Colors.white10,
                                  Colors.grey[200],
                                  Colors.grey[300],
                                  Colors.grey[400]
                                ])),
                            child: Text(
                              'Pusat Layanan dan Informasi',
                              style: GoogleFonts.poppins(fontSize: 17),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 80,
                            child: Card(
                              elevation: 5,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TanyaJawab();
                                  }));
                                },
                                splashColor: Colors.grey[100],
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/tanya-jawab.png',
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 80,
                            child: Card(
                              elevation: 5,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DataWilayah();
                                  }));
                                },
                                splashColor: Colors.grey[100],
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/datawilayah.png',
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 80,
                            child: Card(
                              elevation: 5,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Rujukan();
                                  }));
                                },
                                splashColor: Colors.grey[100],
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/rujukan.png',
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Tanya Jawab'),
                          Text(
                            'Data Wilayah',
                          ),
                          Text('Daftar Rujukan')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 80,
                            child: Card(
                              elevation: 5,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Edukasi();
                                  }));
                                },
                                splashColor: Colors.grey[100],
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/edukasi.png',
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 80,
                          ),
                          Container(
                            width: 80,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Edukasi'),
                          Text('                  '),
                          Text('                '),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200,
                viewportFraction: 0.8,
                aspectRatio: 16 / 9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/masker.jpg'),
                    fit: BoxFit.cover,
                  ),
                )),
                Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/cegah.jpg'),
                    fit: BoxFit.fill,
                  ),
                )),
                Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/jagajarak.jpg'),
                    fit: BoxFit.fill,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Future getData() async {
    Network network =
        Network("https://api.kawalcorona.com/indonesia/provinsi/");

    return network.fetchData();
  }
}
