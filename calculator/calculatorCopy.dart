import 'package:counter_example/calculator/button_menu.dart';
import 'package:counter_example/calculator/calculator_buttonCopy.dart';
import 'package:counter_example/calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorCopy extends StatefulWidget {
  const CalculatorCopy({super.key});

  @override
  State<CalculatorCopy> createState() => _CalculatorCopyState();
}

class _CalculatorCopyState extends State<CalculatorCopy> {
  String expression = "";
  String result = "";
  List<ButtonMenu> _buttonLists = [];
  @override
  void initState() {
    super.initState();
    _buttonLists = [
      ButtonMenu(
          label: "AC",
          onPressed: () {
            expression = "";
            result = "";
          }),
      ButtonMenu(
          label: "C",
          onPressed: () {
            if (expression.length >= 1) {
              expression = expression.substring(0, expression.length - 1);
            }
          }),
      ButtonMenu(label: "%"),
      ButtonMenu(label: "/"),
      ButtonMenu(label: "7"),
      ButtonMenu(label: "8"),
      ButtonMenu(label: "9"),
      ButtonMenu(
          label: "X",
          onPressed: () {
            expression += '*';
          }),
      ButtonMenu(label: "4"),
      ButtonMenu(label: "5"),
      ButtonMenu(label: "6"),
      ButtonMenu(label: "-"),
      ButtonMenu(label: "1"),
      ButtonMenu(label: "2"),
      ButtonMenu(label: "3"),
      ButtonMenu(label: "+"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CalculatorTheme.background,
      ),
      backgroundColor: CalculatorTheme.background,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "$result",
              style: TextStyle(
                  color: CalculatorTheme.darkTextColor,
                  fontSize: 60,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "$expression",
              style: TextStyle(color: CalculatorTheme.textColor, fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // childAspectRatio: 1,
                  // mainAxisExtent: 200,
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return CalculatorButton(
                  label: _buttonLists[index].label,
                  color: CalculatorTheme.buttonColor,
                  onPressed: () {
                    if (_buttonLists[index].onPressed != null) {
                      _buttonLists[index].onPressed!();
                    } else {
                      expression += _buttonLists[index].label;
                    }
                    setState(() {});
                  },
                );
              },
              itemCount: _buttonLists.length,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(label: "0"),
              CalculatorButton(label: "."),
              CalculatorButton(
                label: "=",
                width: 160,
                color: CalculatorTheme.orange,
                onPressed: () {
                  final parser = Parser();
                  final parserExpression = parser.parse(expression);
                  result = parserExpression
                      .evaluate(EvaluationType.REAL, ContextModel())
                      .toString();

                  setState(() {});
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
