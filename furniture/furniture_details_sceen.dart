import 'package:app/furniture/custom_icon_button.dart';
import 'package:faker/faker.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';

class FurnitureDetailScreen extends StatefulWidget {
  const FurnitureDetailScreen({super.key});

  @override
  State<FurnitureDetailScreen> createState() => _FurnitureDetailScreenState();
}

class _FurnitureDetailScreenState extends State<FurnitureDetailScreen> {
  final image = Faker().image.image(random: true, keywords: ["Sofa", "chair"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.45,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            ),
            padding: EdgeInsets.only(top: 34, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Irul Chair",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF403b58),
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "by",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  children: [
                                TextSpan(
                                    text: "Seto",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]))
                        ]),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ), // Border.all
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Row(children: [
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "4.7",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
                Container(
                    padding: EdgeInsets.only(top: 36, left: 20, right: 20),
                    child: ReadMoreText(
                      Faker().lorem.sentences(10).join(". "),
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 0.4,
                        height: 1.45,
                      ),
                      trimLines: 4,
                      trimMode: TrimMode.Line,
                      textAlign: TextAlign.justify,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16,
                        height: 1.45,
                        letterSpacing: 0.7,
                      ),
                      lessStyle: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16,
                        height: 1.45,
                        letterSpacing: 0.7,
                      ),
                    ))
              ],
            ),
          )),
      Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          child: Container(
            color: Colors.red,
            height: 100,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
            child: Row(
              children: [
                CustomIconButton(
                  icon: Icons.keyboard_arrow_left,
                  borderRadius: 14,
                ),
                Spacer(),
                CustomIconButton(
                  icon: Icons.favorite,
                  iconColor: Colors.red,
                  borderRadius: 30,
                )
              ],
            ),
          ))
    ]));
  }
}
