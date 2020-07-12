import 'package:flutter/material.dart';
import 'package:siberian_husky_app/models/husky.dart';
import 'package:siberian_husky_app/constants.dart';

class HuskyCard extends StatelessWidget {
  const HuskyCard({
    Key key,
    this.itemIndex,
    this.husky,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Husky husky;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: itemIndex.isEven? Colors.blue : Colors.grey,
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 27,
                    color: Colors.black12,
                  )
                ]
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: cardBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
                child: Hero(
                  tag: "${husky.id}",
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 140,
                    width: 200,
                    child: Image.asset(
                      husky.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 130,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "${husky.name}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '年齢 ',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                          Text(
                            "${husky.age} 才"
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '性別 ',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                          Text(
                              "${husky.sex}"
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20),
                      child: Text(
                        "${husky.price} 円",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}