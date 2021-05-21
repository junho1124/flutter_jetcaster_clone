import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/provider.dart';
import 'package:provider/provider.dart';

class AlbumItem extends StatefulWidget {
  const AlbumItem({
    Key key,
  }) : super(key: key);

  @override
  _AlbumItemState createState() => _AlbumItemState();
}

class _AlbumItemState extends State<AlbumItem> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: context.read<MyProvider>().url.asMap().entries.map((url) => buildItems(url)).toList(),
        options: CarouselOptions(
          enableInfiniteScroll: false,
          height: 200,
          aspectRatio: 1,
          viewportFraction: 0.45,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              context.read<MyProvider>().onPageChanged = index;
            });
          }

        ));
  }

  Widget buildItems(MapEntry<int, String> url) {
    return Column(
      children: [
        Expanded(
          child: Container(
          width: 200,
          height: 250,
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              ClipRRect(
                child: Image.network(
                  "${url.value}",
                  width: 200,
                  height: 200,
                ),
              ),
              Positioned(
                bottom: 2,
                  right: (url.key == context.read<MyProvider>().onPageChanged) ? 13 : 20,
                  child: IconButton(
                    icon: Icon(Icons.check_circle_sharp),
                    onPressed: () {},
                    iconSize: (url.key == context.read<MyProvider>().onPageChanged) ? 35 : 30,
                  ))
            ],
          ),
  ),
        ),
        SizedBox(height: 8.0,),
        Text('Updated yesterday',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16
        ),)
      ],
    );
  }
}