import 'package:app/furniture/Furniture_Card.dart';
import 'package:app/furniture/custom_text_field.dart';
import 'package:boxy/slivers.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // backgroundColor: Colors.,
            ),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Best Furniture",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  child: Text(
                    "Perfect Choice!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              MultiSliver(children: [
                SliverPinnedHeader(
                  child: CustomTextField(),
                ),
              ]),
              SliverList.builder(
                itemBuilder: (context, index) {
                  return FurnitureCard(index: index);
                },
                itemCount: 10,
              ),
              SliverContainer(
                background: Container(
                  color: Colors.green,
                  margin: EdgeInsets.all(20),
                ),
                sliver: SliverPadding(
                  padding: EdgeInsets.all(20),
                  sliver: SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.red,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class ReuseableComponent extends StatelessWidget {
  const ReuseableComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}





// import 'package:app/furniture/Furniture_Card.dart';
// import 'package:app/furniture/custom_text_field.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: Text(
//         //     "My Application",
//         //     style: TextStyle(color: Colors.white),
//         //   ),
//         //   centerTitle: true,
//         //   backgroundColor: Colors.blue,
//         // ),
//         backgroundColor: Color(0xFFf5f5f5),
//         body: SafeArea(
//           minimum: EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                     child: Text(
//                   "Best Furniture",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )),
//                 Container(
//                     child: Text(
//                   "Perfect Choice!",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )),
//                 SliverToBoxAdapter(
//                   child: CustomTextField(),
//                 ),
//                 SliverList.builder(
//                   itemBuilder: (context, index) {
//                     return FurnitureCard(index: index);
//                   },
//                   itemCount: 10,
//                 ),
//                 SliverGrid.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10),
//                   itemCount: 20,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Container(
//                       color: Colors.red,
//                     );
//                   },
//                 ),
//                 //   Row(
//                 //     children: [
//                 //       // Flexible(
//                 //       //     // flex: 1,
//                 //       //     fit: FlexFit.tight,
//                 //       //     child: Container(
//                 //       //       height: 100,
//                 //       //       width: 100,
//                 //       //       color: Colors.red,
//                 //       //     )),
//                 //       // Flexible(
//                 //       //     // flex: 4,
//                 //       //     fit: FlexFit.tight,
//                 //       //     child: Container(
//                 //       //       height: 100,
//                 //       //       width: 100,
//                 //       //       color: Colors.blue,
//                 //       //     )),
//                 //     ],
//                 //   )
//               ]),
//         ),
//       ),
//     );
//   }
// }
