import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
            inputFormatters: [
          // FilteringTextInputFormatter.digitsOnly,
          // FilteringTextInputFormatter.allow(RegExp(r"*(a-zA-21+5")),
        ],
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              prefixIcon: Icon(Icons.phone),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              hintText: "Enter Email",
            )
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(12),
            //       borderSide: BorderSide(
            //         color: Colors.grey,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(12),
            //         borderSide: BorderSide(
            //           color: Colors.grey,
            //         )),
            //   ),
            // ),
            ));
  }
}
