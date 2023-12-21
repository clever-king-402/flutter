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
  List<String> _buttonLists = [
    "AC",
    "C",
    "%",
    "/",
    "7",
    "8",
    "9",
    "X",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
  ];
  String expression = "";
  String result = "";

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
                  crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return CalculatorButton(
                  label: _buttonLists[index],
                  color: CalculatorTheme.buttonColor,
                  onPressed: () {
                    if (index == 0) {
                      expression = "";
                      result = "";
                    } else if (index == 1) {
                      final separate = expression.split("");
                      separate.removeLast();
                      expression = separate.join();
                    } else if (index == 7) {
                      expression += _buttonLists[index];
                    } else {
                      expression += _buttonLists[index];
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
