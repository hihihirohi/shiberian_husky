import 'package:flutter/material.dart';
import 'package:siberian_husky_app/Screens/Husky/components/husky_card.dart';
import 'package:siberian_husky_app/Screens/Husky/components/husky_category_list.dart';
import 'package:siberian_husky_app/Screens/Husky_detail/husky_detail.dart';
import 'package:siberian_husky_app/components/search_box.dart';
import 'package:siberian_husky_app/models/husky.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          HuskyCategoryList(),
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: huskies.length,
                  itemBuilder: (context, index) => HuskyCard(
                    itemIndex: index,
                    husky: huskies[index],
                    press: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HuskyDetailScreen(
                                husky: huskies[index],
                              ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}