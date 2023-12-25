import 'package:counter_example/furniture/Furniture_Card.dart';
import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  const Furniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [FurnitureCard()]),
    );
  }
}
