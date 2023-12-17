import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.abc,
            color: Colors.white,
          ),
          Icon(
            Icons.alarm_add,
            color: Colors.white,
            size: 50,
          )
        ],
        title: const Text("My First Application",
            style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w600,
                letterSpacing: 1)),
        centerTitle: true,
      ),
      body:
          //  Center(
          //     child:
          Container(
        // color: Colors.indigo,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        // padding: EdgeInsets.zero,
        // padding: EdgeInsets.all(30),
        // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        margin: EdgeInsets.only(top: 20, left: 30),
        decoration: BoxDecoration(
          // color: Colors.pink,
          color: Color.lerp(Colors.red, Colors.green, .4),
          // borderRadius: BorderRadius.circular(30),
          // border: Border.all(color: Colors.green, width: 20)
          // border: Border.symmetric(
          //     vertical: BorderSide(color: Colors.black, width: 20),
          //     horizontal: BorderSide(color: Colors.black, width: 30))
          // border: Border(bottom: BorderSide(color: Colors.blue, width: 30))
          // borderRadius: BorderRadius.all(Radius.circular(40)),
          // borderRadius: BorderRadius.horizontal(
          //     left: Radius.circular(10), right: Radius.circular(40))
          // borderRadius: BorderRadius.vertical(
          //     top: Radius.circular(40), bottom: Radius.circular(90))
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.elliptical(100, 30)),
          // border: Border.merge(
          //     Border(
          //       left: BorderSide(color: Colors.yellow, width: 10),
          //     ),
          //     Border(
          //       right: BorderSide(color: Colors.green, width: 10),
          //     ))
        ),

        // alignment: Alignment.center,
        child: Text(
          "Hello Worlds",
          // style: GoogleFonts.shadowsIntoLight(
          //     fontSize: 30,
          //     color: Colors.red,
          //     fontWeight: FontWeight.w600,
          //     letterSpacing: 1),
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            // fontFamily: "Kalnia Expanded",
            fontFamily: "Roboto",
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.amberAccent,
            decorationThickness: 2,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 1.5,
          ),
        ),
        // )
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("hello World"),
//       ),
//       body: Center()
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
        
//         title: Text(
//           "Hello World",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.w800,
//             letterSpacing: 2,
//           ),
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20.0), // Adjust the radius as needed
//               bottomRight: Radius.circular(20.0),
//             ),
//             color: Colors.blue,
//           ),
//         ),
//       ),
//       body: Container(
//           width: 300,
//           height: 300,
//           // color: Colors.blueAccent,
//           decoration: BoxDecoration(
//               color: Colors.green, borderRadius: BorderRadius.circular(150)),
//           child: Center(
//             child: Text(
//               "Hello This is center",
//               textAlign: TextAlign.center,
//             ),
//           )),
//     );
//   }
// }
