import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
              SliverToBoxAdapter(
                  // child: CustomTextField(),
                  ),
              SliverList.builder(
                itemBuilder: (context, index) {
                  // return FurnitureCard(index: index);
                },
                itemCount: 10,
              ),
              // SliverToBoxAdapter(
              //   child:SingleChildScrollView(child:  ) ,
              // ),
              SliverPinnedHeader(
                  child: Container(
                color: Color(0xfff5f5f5),
                // child: CustomTextField(),
              )),
              SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.red,
                  );
                },
                itemCount: 20,
              ),
            ],
          ),
        ));
  }
}

class TextViewDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 88;

  @override
  // TODO: implement minExtent
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
