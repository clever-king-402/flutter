import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const CustomRoundedButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF403b58),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF403b58),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            label,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
