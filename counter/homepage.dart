// import 'package:flutter/material.dart';

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
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 1)),
//         centerTitle: true,
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(Object context) {
//     return Scaffold(
//       backgroundColor: Colors.indigo,
//       appBar: AppBar(
//         title: Text(
//           "My App",
//           style: const TextStyle(color: Colors.blue, fontSize: 30),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.pink[400],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[300],
//       appBar: AppBar(
//         leading: const Icon(
//           Icons.warehouse,
//           color: Colors.yellow,
//           size: 50,
//         ),
//         actions: const [
//           Icon(
//             Icons.warehouse,
//             color: Colors.yellow,
//             size: 50,
//           ),
//         ],
//         title: const Text(
//           "My First App",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30,
//           ),
//         ),
//         backgroundColor: Colors.greenAccent,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 50,
        ),
        title: const Text(
          "Hello World",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.soap,
            color: Colors.white,
          ),
          Icon(
            Icons.alarm,
            color: Colors.white,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
