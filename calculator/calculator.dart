import 'package:counter_example/calculator/button_menu.dart';
import 'package:counter_example/calculator/calculator_button.dart';
import 'package:counter_example/calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List<ButtonMenu> _buttonLists = [];
  String expression = "";
  String result = "";
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Text("$result",
                  style: TextStyle(
                      fontSize: 88,
                      color: CalculatorTheme.darkTextColor,
                      fontWeight: FontWeight.w600)),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              child: Text("$expression",
                  style: TextStyle(
                      fontSize: 40,
                      color: CalculatorTheme.textColor,
                      fontWeight: FontWeight.w600)),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 30),
            ),

            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CalculatorButton(
                  label: _buttonLists[index].label,
                  onPressed: () {
                    if (_buttonLists[index].onPressed != null) {
                      _buttonLists[index].onPressed!();
                    }
                    // if (index == 0) {
                    //   expression = "";
                    //   result = "";
                    // }
                    else {
                      expression += _buttonLists[index].label;
                    }
                    setState(() {});
                  },
                );
              },
              itemCount: _buttonLists.length,
            )
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Center(
            //         child: CalculatorButton(
            //           label: "AC",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           // label: "C",
            //           icon: Icons.backspace,
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "%",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "/",
            //         ),
            //       ),
            //     ],
            //   ),
            //   SizedBox(
            //     height: 20,
            //   ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Center(
            //         child: CalculatorButton(
            //           label: "7",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "8",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "9",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "X",
            //         ),
            //       ),
            //     ],
            //   ),
            //   SizedBox(
            //     height: 20,
            //   ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Center(
            //         child: CalculatorButton(
            //           label: "4",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "5",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "6",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "-",
            //         ),
            //       ),
            //     ],
            //   ),
            //   SizedBox(
            //     height: 20,
            //   ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Center(
            //         child: CalculatorButton(
            //           label: "1",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "2",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "3",
            //         ),
            //       ),
            //       Center(
            //         child: CalculatorButton(
            //           label: "+",
            //         ),
            //       ),
            //     ],
            //   ),
            ,
            // SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Center(
                  child: CalculatorButton(
                    label: "0",
                    onPressed: () {
                      expression += '0';
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Center(
                  child: CalculatorButton(
                    label: ".",
                    onPressed: () {
                      expression += '0';
                      setState(() {});
                    },
                  ),
                ),
                Center(
                  child: CalculatorButton(
                    label: "=",
                    color: CalculatorTheme.orange,
                    textColor: Colors.white,
                    width: 150,
                    onPressed: () {
                      if (expression.isEmpty) {
                        return;
                      }
                      setState(() {
                        try {
                          final parser = Parser();
                          final parsedExpression = parser.parse(expression);
                          result = (parsedExpression.evaluate(
                                  EvaluationType.REAL, ContextModel()) as num)
                              .toStringAsFixed(2);
                        } catch (e) {
                          Fluttertoast.showToast(msg: "Invalid format");
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
//stagedView
