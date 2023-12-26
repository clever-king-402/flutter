import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color iconColor;
  final double borderRadius;
  const CustomIconButton(
      {super.key,
      required this.icon,
      this.onPressed,
      this.iconColor = Colors.indigo,
      this.borderRadius = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Icon(
        icon,
        color: iconColor,
        size: 28,
      ),
    );
  }
}
