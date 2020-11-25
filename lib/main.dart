import 'package:covid19/FAQ.dart';
import 'package:covid19/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
    int _selectedItemIndex = 1;

    final List page = [
      null,
      Homepage(),
      FAQ(),
    ];
    
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          selectedIconTheme: IconThemeData(color: Colors.blue),
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedItemIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text("Profile"),
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text("Beranda"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text("FAQ"),
              icon: Icon(Icons.help_outlined),
            ),
          ],
        ),
        body: page[_selectedItemIndex],
      ),
    );
  }
}
