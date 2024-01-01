import 'package:finance/finance/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.background,
      ),
      backgroundColor: AppTheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Image.asset(
            "assets/images/onboarding.png",
            height: 273,
          ),
          Container(
            child: Text("Stay on top of your finance with us.",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center),
          ),
          Container(
            child: Text(
                "We are your new financial Advisors to recommed the best investments for you.",
                textAlign: TextAlign.center),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 36),
            margin: EdgeInsets.only(
              top: 20,
              left: 26,
              right: 26,
              bottom: 16,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheme.buttonColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Create account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Text(
              "Login",
              style: TextStyle(
                  color: AppTheme.buttonColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
