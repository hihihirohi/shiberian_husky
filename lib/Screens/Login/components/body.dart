import 'package:flutter/material.dart';
import 'package:siberian_husky_app/components/rounded_button.dart';
import 'package:siberian_husky_app/Screens/Signup/components/background.dart';
import 'package:siberian_husky_app/components/rounded_input_field.dart';
import 'package:siberian_husky_app/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery
          .of(context)
          .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login_husky.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "メールアドレス",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}