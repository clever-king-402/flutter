import 'package:counter_example/calculator/theme.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String? label;
  final void Function()? onPressed;
  final Color? color;
  final double width;
  const CalculatorButton({
    super.key,
    required this.label,
    this.onPressed,
    this.color = CalculatorTheme.buttonColor,
    this.width = 80,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: 80,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 5,
              spreadRadius: 5,
              color: CalculatorTheme.shadowColor,
              blurStyle: BlurStyle.normal),
          BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 5,
              spreadRadius: 5,
              color: CalculatorTheme.shadowColor,
              blurStyle: BlurStyle.normal)
        ], borderRadius: BorderRadius.circular(10), color: color),
        child: Text(
          "$label",
          style: TextStyle(color: CalculatorTheme.textColor, fontSize: 30),
        ),
      ),
    );
  }
}
