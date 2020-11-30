import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
// import 'package:gradient_widgets/gradient_widgets.dart';

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
                        alignment: Alignment(-0.95, 0.90),
                        child: Text(
                          'Update Terkini',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: SizedBox(
                          height: 100,
                          width: 370,
                          child: DataTable(
                            columns: [
                              DataColumn(
                                  label: Text(
                                'Total Kasus',
                                style: TextStyle(
                                  backgroundColor: Colors.red[300],
                                ),
                              )),
                              DataColumn(
                                  label: Text(
                                'Sembuh',
                                style: TextStyle(
                                    backgroundColor: Colors.green[300]),
                              )),
                              DataColumn(
                                  label: Text(
                                'Meninggal',
                                style: TextStyle(
                                    backgroundColor: Colors.grey[300]),
                              )),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('111.000')),
                                DataCell(Text('60.000')),
                                DataCell(Text('30.000')),
                              ])
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment(-0.90, 0.30),
                          child: Text(
                            'Pusat Layanan dan Informasi',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
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
                    image: AssetImage('assets/news1.png'),
                    fit: BoxFit.cover,
                  ),
                )),
                Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/news1.png'),
                    fit: BoxFit.cover,
                  ),
                )),
                Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/news1.png'),
                    fit: BoxFit.cover,
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
