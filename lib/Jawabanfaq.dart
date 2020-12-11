import 'package:flutter/material.dart';

class Jawabanfaq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title: Text('Frequently Asked Question (FAQ)'),
        ),
        
        body: Container(
            child: Row(
                children: <Widget>[
                    SizedBox(
                        height:100,
                        child:RaisedButton(
                        onPressed:(){},
                        child:Text('isi pilihan faq')
                        ),
                    ),
                ]
            )
        ) 
    );  
    }
}
