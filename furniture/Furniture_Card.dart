import 'package:app/furniture/custom_card_button.dart';
import 'package:faker/faker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FurnitureCard extends StatelessWidget {
  final int index;
  const FurnitureCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // added some padding for better view
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              color: Color(0xFF34346).withOpacity(0.1),
              blurRadius: 10,
            )
          ]),
      margin: EdgeInsets.symmetric(vertical: 20),
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            // child: Container(
            //   height: 150,
            //   width: 150,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           fit: BoxFit.cover,
            //           image: NetworkImage(Faker()
            //               .image
            //               .image(random: true, keywords: ["people"])))),
            //   foregroundDecoration: BoxDecoration(
            //     color: Colors.green.withOpacity(0.1),
            //   ),
            //   child: Align(
            //     alignment: Alignment.topRight,
            // child: Container(
            //   width: 30,
            //   height: 30,
            //   margin: EdgeInsets.only(top: 10, right: 10),
            //   decoration: BoxDecoration(
            //       color: Colors.white, shape: BoxShape.circle),
            //   child: Icon(
            //     Icons.favorite,
            //     color: Colors.red,
            //   ),
            // ),
            //   ),
            // ),
            child: Stack(children: [
              Image.network(
                Faker().image.image(keywords: ["people"], random: true),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(top: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              // Positioned.fill(
              //   child: Container(
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           Color(0xFF70e1f5),
              //           Color(0xFFffd194),
              //         ],
              //         stops: [0.2, 0.61],
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //       ),
              //     ),
              //   ),
              //   // child: Container(color: Colors.black.withOpacity(0.15))
              // ),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text(
                    Faker().food.dish(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ]),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Irul Chair",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("hello World");
                            },
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
                Container(
                  padding: EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                  ),
                  child: Text(
                    "Ergonomical for humans body curve. Ergonomical for Ergonomical for",
                    overflow: TextOverflow.fade,
                    // overflow: TextOverflow.ellipsis, // Handle overflow if necessary
                    maxLines: 2, // Limit the number of lines to show
                  ),
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "\$102",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(text: ".00", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomRoundedButton(
                      label: "BUY",
                      onPressed: () => {print("hello wrold")},
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
