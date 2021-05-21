import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/my_discovers.dart';
import 'package:flutter_jetcaster_clone/src/my_bottom.dart';
import 'package:flutter_jetcaster_clone/src/provider.dart';
import 'package:provider/provider.dart';
import 'album_card.dart';
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
        body: Column(
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
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: context
                    .read<MyProvider>()
                    .url
                    .map((e) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(0.0),
                          height: 150,
                          child: Image.network(e),
                        ))
                    .toList(),
              ),
            )
          ],
        ));
  }
}
