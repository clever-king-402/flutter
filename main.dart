import 'package:counter_example/calculator/calculator.dart';
import 'package:counter_example/calculator/calculatorCopy.dart';
import 'package:counter_example/homepage.dart';
import 'package:counter_example/homepage2.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApplication());
// }

// class MyApplication extends StatelessWidget {
//   const MyApplication({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Hello World",
//         home: HomePage(),
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//             // textTheme: GoogleFonts.dancingScriptTextTheme(),
//             fontFamily: "Kalnia Expanded"));
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}
