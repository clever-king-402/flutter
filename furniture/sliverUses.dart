import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class UseSliver extends StatelessWidget {
  const UseSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: CustomScrollView(
        slivers: [
          SectionWidget(index: 1),
          SectionWidget(index: 2),
          SectionWidget(index: 3),
          SectionWidget(index: 4),
          SectionWidget(index: 5),
        ],
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final int index;
  const SectionWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(pushPinnedChildren: true, children: [
      SliverPinnedHeader(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          color: Colors.indigo,
          child: Text(
            "Header $index",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  title: Text(Faker().animal.name()),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.network(
                        Faker().image.image(keywords: ["people"], random: true),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      )),
                ));
          })
    ]);
  }
}
