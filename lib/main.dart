import 'package:flutter/material.dart';
import 'package:wisata_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.blue.shade100,
      ),
      home: homescreen(),
    );
  }
}
