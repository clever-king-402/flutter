import 'package:counter_example/custom_list_tile.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key});
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("My Application"),
        actions: [
          IconButton(
              onPressed: () {
                _controller.animateTo(0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              icon: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
                size: 32,
              )),
          IconButton(
              onPressed: () {
                _controller.animateTo(_controller.position.maxScrollExtent,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 32,
              ))
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  30,
                  (index) => Container(
                        margin: EdgeInsets.all(20),
                        width: 150,
                        child: Column(children: [
                          Image.network(Faker().image.image(random: true)),
                          Text(
                            Faker().food.dish(),
                          ),
                          Text(Faker().animal.name())
                        ]),
                      )),
            )),
      ]),
      //  GridView.builder(
      //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: width <= 100 ? width / 2 : 250,
      //       mainAxisSpacing: 20,
      //       crossAxisSpacing: 20,
      //       mainAxisExtent: 200,
      //     ),
      //     controller: _controller,
      //     // SliverGridDelegateWithFixedCrossAxisCount(
      //     //     crossAxisCount: 2,
      //     //     mainAxisExtent: 200,
      //     //     crossAxisSpacing: 20,
      //     //     mainAxisSpacing: 20),
      //     padding: EdgeInsets.all(20),
      //     itemCount: 2,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         color: Colors.red,
      //       );
      //     })
      //  Scrollbar(
      //   thumbVisibility: true,
        // child: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     return Divider(
        //       color: Colors.green.shade200,
        //     );
        //   },
        //   physics: AlwaysScrollableScrollPhysics(),
        //   //ClampingScrollPhysics(),
        //   // BouncingScrollPhysics(),
        //   controller: _controller,
        //   itemBuilder: (context, index) {
        //     return CustomListTile(index: index);
        //   },
        //   itemCount: 100,
        // ),
      // ),
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
//reload