import 'package:flutter/material.dart';

class HuskyCategoryList extends StatefulWidget {
  @override
  _HuskyCategoryListState createState() => _HuskyCategoryListState();
}

class _HuskyCategoryListState extends State<HuskyCategoryList> {
  int selectedIndex = 0;
  List categories = ['すべて', 'ブラック', 'ホワイト', 'シルバー'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: 20,
              // At end item it add extra 20 right  padding
              right: index == categories.length - 1 ? 20 : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

}