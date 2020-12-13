import "package:flutter/material.dart";

class DataWilayah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Data Wilayah'),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Data Wilayah Covid 19",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Di Jawa Barat",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
