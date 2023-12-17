import 'dart:async';

import 'package:flutter/material.dart';

//stf
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class CounterScreen extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }

// class _CounterScreenState extends State<CounterScreen>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }

// }

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 1;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   print("Intialized");
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  Timer? timer;

  @override
  Widget build(BuildContext context) {
    print("Bulit method run");
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (timer != null) {
            timer?.cancel();
            timer = null;
            setState(() {
              count = 0;
            });
          } else {
            timer = Timer.periodic(Duration(seconds: 1), (timer) {
              setState(() {
                count += 1;
                // print(count);
              });
            });
          }
        },
        backgroundColor: Colors.indigo,
        child: Icon(timer != null ? Icons.pause : Icons.play_arrow),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      body: Center(
        child: Text(
          "$count",
          style: TextStyle(color: Colors.red, fontSize: 40),
        ),
      ),
    );
  }
}
