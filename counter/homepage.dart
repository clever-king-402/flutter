// import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.indigo,
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         leading: Icon(
//           Icons.arrow_back,
//           color: Colors.white,
//         ),
//         actions: const [
//           Icon(
//             Icons.abc,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.alarm_add,
//             color: Colors.white,
//             size: 50,
//           )
//         ],
//         title: const Text("My First Application",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 10,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 1)),
//         centerTitle: true,
//       ),
//       body:
//           //  Center(
//           //     child:
//           Container(
//         color: Colors.indigo,
//         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//         margin: EdgeInsets.only(top: 20, left: 30),
//         // alignment: Alignment.center,
//         child: Text(
//           "Hello Worlds",
//           // style: GoogleFonts.shadowsIntoLight(
//           //     fontSize: 30,
//           //     color: Colors.red,
//           //     fontWeight: FontWeight.w600,
//           //     letterSpacing: 1),
//           style: TextStyle(
//             color: Colors.blue,
//             fontSize: 30,
//             // fontFamily: "Kalnia Expanded",
//             fontFamily: "Roboto",
//             decoration: TextDecoration.lineThrough,
//             decorationColor: Colors.amberAccent,
//             decorationThickness: 2,
//             fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.w600,
//             height: 1.5,
//             letterSpacing: 1.5,
//           ),
//         ),
//         // )
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("hello World"),
      ),
      body: Center()
    );
  }
}
