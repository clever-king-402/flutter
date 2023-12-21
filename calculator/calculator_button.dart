import 'package:counter_example/calculator/theme.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String? label;
  final double height;
  final double width;
  final void Function()? onPressed;
  // final IconData? icon;
  final Color? color;
  final Color? textColor;
  const CalculatorButton(
      {super.key,
      required this.label,
      this.height = 70,
      this.width = 70,
      this.color = CalculatorTheme.buttonColor,
      this.textColor = CalculatorTheme.textColor,
      this.onPressed
      // this.color = CalculatorTheme.buttonColor,
      });
  // : assert(
  //           (icon != null && label == null) || (icon == null && label != null),
  // "Label and icon cannot be provided at the same time");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
          boxShadow: [
            BoxShadow(
                color: CalculatorTheme.shadowColor,
                offset: Offset(5, 5),
                blurRadius: 3,
                spreadRadius: 3),
            BoxShadow(
                color: CalculatorTheme.shadowColor,
                offset: Offset(-5, -5),
                blurRadius: 3,
                spreadRadius: 3),
          ],
        ),
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Text(
          label!,
          style: TextStyle(
              fontSize: 40, color: textColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
