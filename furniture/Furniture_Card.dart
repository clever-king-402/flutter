import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class FurnitureCard extends StatefulWidget {
  final int index;
  const FurnitureCard({super.key, required this.index});

  @override
  State<FurnitureCard> createState() => _FurnitureCardState();
}

class _FurnitureCardState extends State<FurnitureCard> {
  @override
  void initState() {
    // TODO: implement initState
    print("Initialized-----------------${widget.index}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                color: Color(0xff343c46).withOpacity(0.1),
                blurRadius: 10)
          ]),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Image.network(
                  Faker().image.image(random: true),
                  height: 150,
                  width: 150,
                  fit:BoxFit.cover
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
