import 'package:covid19/tanya_jawab.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
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
                  color: Colors.white10,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment(-0.92, 0.80),
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
                      Card(
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
                                  DataCell(Text('111.000')),
                                  DataCell(Text('60.000')),
                                  DataCell(Text('30.000')),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
                                onTap: () {},
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
                                onTap: () {},
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
                          Text('Data Wilayah'),
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
                                onTap: () {},
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Edukasi'),
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
                autoPlayInterval: Duration(seconds: 5),
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
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
