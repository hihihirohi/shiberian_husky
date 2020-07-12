import 'package:flutter/material.dart';
import 'package:siberian_husky_app/Screens/Husky/components/body.dart';
import 'package:siberian_husky_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class HuskiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title:  RichText(
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
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {},
          ),
        ],
    );
  }
}