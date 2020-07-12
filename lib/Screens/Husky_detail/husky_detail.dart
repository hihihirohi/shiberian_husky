import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siberian_husky_app/Screens/Husky_detail/component/body.dart';
import 'package:siberian_husky_app/constants.dart';
import 'package:siberian_husky_app/models/husky.dart';


class HuskyDetailScreen extends StatelessWidget {
  final Husky husky;

  const HuskyDetailScreen({Key key, this.husky}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: buildAppBar(context),
      body: Body(
        husky: husky,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}