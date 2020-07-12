import 'package:flutter/material.dart';
import 'package:siberian_husky_app/Screens/Welcome/components/background.dart';
import 'package:siberian_husky_app/components/rounded_button.dart';
import 'package:siberian_husky_app/constants.dart';
import 'package:siberian_husky_app/Screens/Login/login_screen.dart';
import 'package:siberian_husky_app/Screens/Signup/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Shiberian",
                    style: TextStyle(
                      fontSize: 20,
                    )
                  ),
                  TextSpan(
                    text: "Husky",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/top_husky.png",
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: primaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}