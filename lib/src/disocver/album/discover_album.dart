import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/disocver/album/discover_album_build_item.dart';
import 'package:flutter_jetcaster_clone/src/disocver/album/discover_album_detail.dart';
import 'discover_play_widget.dart';

class DiscoverAlbumDetail extends StatefulWidget {
  const DiscoverAlbumDetail({Key key}) : super(key: key);

  @override
  _DiscoverAlbumDetailState createState() => _DiscoverAlbumDetailState();
}

class _DiscoverAlbumDetailState extends State<DiscoverAlbumDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 8,
          child: BuildItems(),
        ),
        SizedBox(height: 8.0,),
        Divider(color: Colors.grey,),
        Column(
          children: [
            BuildDetail(),
            SizedBox(height: 16.0),
            PlayWidget()
          ],
        ),

      ],
    );
  }
}

