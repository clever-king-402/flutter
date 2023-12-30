import 'dart:math';

import 'package:app/furniture/student_data.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class StickyGroupList extends StatefulWidget {
  const StickyGroupList({super.key});

  @override
  State<StickyGroupList> createState() => _StickyGroupListState();
}

class _StickyGroupListState extends State<StickyGroupList> {
  List<Student> _students = [];
  @override
  void initState() {
    super.initState();
    _students = List.generate(100, (index) {
      return Student(
          admissionDate:DateTime.now().subtract(Duration(days: Random().nextInt(7))),
          profile: Faker().image.image(random: true),
          name: Faker().animal.name());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: StickyGroupedListView(
        elements: _students,
        groupBy: (element) {
          return element.admissionDate;
        },
        groupSeparatorBuilder: (element) {
          return Container(
              padding: EdgeInsets.only(bottom: 16),
              color: Colors.indigo,
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
        },
        

      ),
    );
  }
}
