import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double verticalPadding;
  final double horizontalPadding;
  const MyWidget(
      {super.key,
      required this.label,
      this.onPressed,
      this.verticalPadding = 8,
      this.horizontalPadding = 16});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff403b58),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: Text(
            "Buy",
            style: TextStyle(
                color: Color(0xff403b58),
                fontSize: 14,
                fontWeight: FontWeight.w500,),
          ),
        ),
      ),
    );
  }
}
