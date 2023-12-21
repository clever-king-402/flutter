import 'package:counter_example/custom_list_tile.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("My Application"),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CustomListTile(index: index);
          },
          itemCount: 100,
        ),
      ),
      // body: ListView(
      //   // SingleChildScrollView(
      //   children:
      //       // Column(
      //       // children:
      //       List.generate(100000, (index) => CustomListTile(index: index)),
      //   // [
      //   //   ListTile(
      //   //     title: Text("Title 1"),
      //   //     subtitle: Text("Description"),
      //   //     leading: Icon(Icons.home),
      //   //     trailing: Icon(Icons.skip_next),
      //   //   )
      //   // ]
      // ),
      // ),
    );
  }
}
