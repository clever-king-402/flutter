import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// radio
// switch
// check
// expansion tile
// dropdown

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  bool? switchValue = false;

  String? gender = "";
  List<String> places = ["ktm", "ltp", "bkt"];

  String? selectedPlace;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        DropdownButton<String>(
            items: places
                .map((e) => DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            hint: Text("select Place"),
            icon: Icon(Icons.keyboard_arrow_down),
            underline: Container(),
            value: selectedPlace,
            isExpanded: true,
            onChanged: (value) {
              setState(() {
                selectedPlace = value;
              });
            })
        // Row(children: [
        //   Radio(
        //       value: "male",
        //       groupValue: gender,
        //       onChanged: (value) {
        //         setState(() {
        //           gender = value;
        //         });
        //       }),
        //   Text("Male"),
        // ]),
        // Row(
        //   children: [
        //     Radio(
        //         value: "female",
        //         groupValue: gender,
        //         onChanged: (value) {
        //           setState(() {
        //             gender = value;
        //           });
        //         }),
        //     Text("feMale"),
        //   ],
        // )

        // Checkbox(
        //     value: switchValue,
        //     tristate: true,
        //     onChanged: (value) {
        //       setState(() {
        //         switchValue = value;
        //       });
        //     }),
        // Checkbox(
        //     value: switchValue,
        //     tristate: true,
        //     onChanged: (value) {
        //       setState(() {
        //         switchValue = value;
        //       });
        //     }),
        // Switch.adaptive(
        //     value: switchValue,
        //     activeColor: Colors.red,
        //     activeTrackColor: Colors.blue,
        //     thumbColor: MaterialStateProperty.all(Colors.amber),
        //     // thumbColor: MaterialStateProperty.resolveWith((states) {
        //     //   if(states.contains(MaterialState.hovered) && states.contains(MaterialState.selected)){

        //     //   }
        //     // }),
        //     onChanged: (value) {
        //       setState(() {
        //         switchValue = value;
        //       });
        //     }),
        // CupertinoSwitch(
        //     value: switchValue,
        //     onChanged: (value) {
        //       setState(() {
        //         switchValue = value;
        //       });
        //     }),
        // MaterialButton(
        //   onPressed: () {},
        //   color: Colors.indigo,
        //   padding: EdgeInsets.symmetric(vertical: 16),
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //   minWidth: MediaQuery.of(context).size.width,
        //   child: Text(
        //     "Press Me",
        //     style: TextStyle(color: Colors.white, fontSize: 20),
        //   ),
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        // OutlinedButton(
        //   onPressed: () {},
        //   child: Text("Helo"),
        //   style: OutlinedButton.styleFrom(
        //       backgroundColor: Colors.amber,
        //       minimumSize: Size.fromHeight(60),
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(30))),
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        // TextButton(
        //   onPressed: () {},
        //   child: Text("Hello"),
        //   style: ButtonStyle(backgroundColor: Colors.amber),
        // )
      ]),
    );
  }
}
