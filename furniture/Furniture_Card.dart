import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        ClipRRect(
          // clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
              Faker().image.image(random: true, keywords: ["people"]),
              fit:
                  // BoxFit.contain,
                  BoxFit.cover,
              // BoxFit.scaleDown,
              // BoxFit.fitHeight,
              // BoxFit.fitWidth,
              height: 150,
              alignment: Alignment.topCenter,
              width: 150),
        ),
        Container(
            // padding: ,
            ),
        Row(
          children: [
            RichText(
                text: TextSpan(
                    text: "\$102",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    children: [
                  TextSpan(text: ".00", style: TextStyle(fontSize: 16))
                ]))
          ],
        )
      ]),
    );
  }
}
