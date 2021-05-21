import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {},
          iconSize: 32,
          color: Color(0XFF9BA9B5),
        ),
        Text(
          "Jetcaster",
          style: TextStyle(
            fontSize: 30,
            color: Color(0XFFCBE1EA),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          iconSize: 32,
          color: Color(0XFF9BA9B5),
        )
      ],
    );
  }
}