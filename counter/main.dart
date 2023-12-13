import 'package:counter_example/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
