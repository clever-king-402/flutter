import 'package:finance/finance/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Finance());
}

class Finance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Finance",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
