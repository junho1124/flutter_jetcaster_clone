import 'package:flutter/material.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.play_circle_outline),
          onPressed: () {},
          iconSize: 50,
          color: Colors.white,),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Music Title',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),),
                Text('Artist Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.format_list_bulleted_sharp),
          onPressed: () {},
          iconSize: 50,
          color: Colors.white,
        ),
        IconButton(
          icon: Icon(Icons.more_vert_sharp),
          onPressed: () {},
          iconSize: 50,
          color: Colors.white,
        ),
      ],
    );
  }
}