import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/disocver/my_discovers.dart';
import 'album_card.dart';
import '../disocver/album/discover_album.dart';
import 'main_bottom.dart';
import 'my_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0x00000000),
          elevation: 0,
          title: MyAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              AlbumItem(),
              SizedBox(
                height: 32.0,
              ),
              Stack(
                children: [
                  MyBottom(),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Divider(color: Colors.grey))
                ],
              ),
              MyDiscovers(),
              DiscoverAlbumDetail(),
            ],
          ),
        ));
  }
}


