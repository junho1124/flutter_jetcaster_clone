import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';

class BuildItems extends StatefulWidget {
  const BuildItems({Key key}) : super(key: key);

  @override
  _BuildItemsState createState() => _BuildItemsState();
}

class _BuildItemsState extends State<BuildItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: context
          .read<MyProvider>()
          .url
          .asMap()
          .entries
          .map((url) => Container(
        margin: EdgeInsets.all(0.0),
        padding: EdgeInsets.all(0.0),
        height: 150,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(url.value, height: 150, width: 150,)),
            Positioned(
                bottom: -5,
                right: 15,
                child: IconButton(
                    icon: Icon(context.read<MyProvider>().isChecked.contains(url.key) ? Icons.check_circle_sharp : Icons.add_circle),
                    onPressed: () {
                      setState(() {
                        if (context
                            .read<MyProvider>()
                            .isChecked
                            .contains(url.key)) {
                          context
                              .read<MyProvider>()
                              .isChecked
                              .remove(url.key);
                        } else {
                          context
                              .read<MyProvider>()
                              .isChecked
                              .add(url.key);
                        }
                      }
                      );
                    }))
          ],
        ),
      ))
          .toList(),
    );
  }
}
