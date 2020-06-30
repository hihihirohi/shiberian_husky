import 'package:flutter/material.dart';
import 'package:siberian_husky_app/Screens/Login/components/body.dart';
import 'package:siberian_husky_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        title: Text(
          "LOGIN",
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