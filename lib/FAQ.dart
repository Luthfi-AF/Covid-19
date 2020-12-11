import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Frequently Asked Question (FAQ)'),
          ),
        ),
        body: ListView(padding: EdgeInsets.all(20), children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                  labelText: "Cari Pertanyaan",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: Icon(Icons.search)),
            ),
          ])
        ]));
  }
}
