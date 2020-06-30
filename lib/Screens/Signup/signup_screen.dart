import 'package:flutter/material.dart';
import 'package:siberian_husky_app/Screens/Signup/components/body.dart';
import 'package:siberian_husky_app/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: backgroundColor,
          elevation: 0.0,
          title: Text(
            "SIGNUP",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body: Body(),
    );
  }
}