import 'package:counter_example/furniture/UiTheme.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class HomePageUI extends StatelessWidget {
  final List _menu = <String>[
    "All",
    "Chair",
    "Table",
    "Lamp",
    "Floor",
  ];
  HomePageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 28),
        child: AppBar(
          backgroundColor: UiTheme.backgroundColor,
        ),
      ),
      backgroundColor: UiTheme.backgroundColor,
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  // transform: Matrix4.translationValues(0, -30.0, 0.0),
                  child: Text(
                    "Best Furniture",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: UiTheme.textDarkColor),
                    // textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Perfect Choice!",
                    style: TextStyle(color: UiTheme.textColor, fontSize: 23),
                  ),
                ),
                Container(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        // width: 300,
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search',
                              border: InputBorder.none,
                              fillColor: Colors.black),
                        ),
                      ),
                    ),
                    Container(),
                  ]),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            _menu.length,
                            (index) => Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: index == 0
                                      ? Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 7, horizontal: 15),
                                          decoration: BoxDecoration(
                                              color: UiTheme.textDarkColor,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Text(
                                            _menu[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ))
                                      : Text(
                                          _menu[index],
                                          style: TextStyle(
                                              color: UiTheme.textColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                ))),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          // height: 150,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    blurRadius: 100,
                                    spreadRadius: .1,
                                    color: UiTheme.textColor)
                              ]),
                          child: Row(children: [
                            Container(
                              height: 150,
                              width: 150,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.network(
                                Faker().image.image(
                                      random: true,
                                    ),
                                height: 200,
                                width: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Irul Chair",
                                      style: TextStyle(
                                          color: UiTheme.textDarkColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "by Seto",
                                      style:
                                          TextStyle(color: UiTheme.textColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Good for human body curve",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: UiTheme.textColor,
                                        // overflow:
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "\$100",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: UiTheme.textDarkColor,
                                          textBaseline:
                                              TextBaseline.alphabetic),
                                    )
                                  ]),
                            )
                          ]),
                        );
                      },
                      itemCount: 5,
                      shrinkWrap: true,
                    )),
                Container(),
              ],
            ),
          )),
    );
  }
}
//icon pack