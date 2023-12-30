import 'package:app/furniture/HomePage.dart';
import 'package:app/furniture/button_example.dart';
import 'package:app/furniture/furniture_details_sceen.dart';
import 'package:app/furniture/grouped_list.dart';
import 'package:app/furniture/sliverUses.dart';
import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Furniture",
      home: ButtonExample(),
      theme: ThemeData(
          useMaterial3: true,
          checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStatePropertyAll(Colors.blue),
            checkColor: MaterialStatePropertyAll(Colors.yellow),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: BorderSide(color: Colors.red),
          )
          // primarySwatch: generateMaterialColor(color: Color(0xff34f26f))
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
