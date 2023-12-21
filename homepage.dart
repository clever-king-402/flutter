import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 0;
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
        body: Center(
          child: Column(
            children: [
              Container(
                // color: Colors.indigo,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                // padding: EdgeInsets.zero,
                // padding: EdgeInsets.all(30),
                // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
                margin: EdgeInsets.only(top: 20, left: 30),
                decoration: BoxDecoration(
                  // color: Colors.pink,
                  color: Color.lerp(Colors.red, Colors.yellow, sliderValue),

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
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(40),
                  //     topRight: Radius.elliptical(100, 30)),
                  borderRadius: BorderRadius.lerp(BorderRadius.circular(0),
                      BorderRadius.circular(100), sliderValue),
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
              Slider(
                  value: sliderValue,
                  max: 1,
                  min: 0,
                  onChanged: (value) {
                    setState(() {
                      print("hellow");
                      sliderValue = value;
                    });
                  })
            ],
          ),
        )
        //     body: Container(
        //       color: Colors.blue,
        //       width: MediaQuery.of(context).size.width,
        //       child: Column(
        //           mainAxisAlignment:
        //               //  MainAxisAlignment.center,
        //               //  MainAxisAlignment.start,
        //               //  MainAxisAlignment.end,
        //               // MainAxisAlignment.spaceBetween,
        //               MainAxisAlignment.spaceEvenly,
        //           // crossAxisAlignment:

        //           // CrossAxisAlignment.center,
        //           // CrossAxisAlignment.stretch,
        //           //     CrossAxisAlignment.baseline,
        //           // textBaseline: TextBaseline.alphabetic,
        //           // MainAxisAlignment.spaceAround,
        //           children: [
        //             //   Row(
        //             //     mainAxisAlignment: MainAxisAlignment.center,
        //             //     crossAxisAlignment: CrossAxisAlignment.end,
        //             //     textBaseline: TextBaseline.alphabetic,
        //             //     children: [
        //             //       Text(
        //             //         "Hellow",
        //             //         style: TextStyle(
        //             //             fontSize: 40,
        //             //             color: Colors.white,
        //             //             fontWeight: FontWeight.w600),
        //             //       ),
        //             //       Text(
        //             //         "World",
        //             //         style: TextStyle(
        //             //             fontSize: 10,
        //             //             color: Colors.white,
        //             //             fontWeight: FontWeight.w600),
        //             //       )
        //             //     ],
        //             //   )
        //             Container(
        //               height: 100,
        //               width: 100,
        //               alignment: Alignment.center,
        //               color: Colors.blue,
        //               child: Text(
        //                 "Hello World",
        //                 style: TextStyle(color: Colors.white, fontSize: 30),
        //               ),
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.yellow,
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.green,
        //             ),
        //             Slider(value: 0.5, max: 1, min: 0, onChanged: (onChanged) {})
        //           ]),
        //     ),
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
