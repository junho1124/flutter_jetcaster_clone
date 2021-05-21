import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/provider.dart';
import 'package:provider/provider.dart';

class MyDiscovers extends StatefulWidget {
  const MyDiscovers({Key key}) : super(key: key);

  @override
  _MyDiscoversState createState() => _MyDiscoversState();
}

class _MyDiscoversState extends State<MyDiscovers> {
  ScrollController controller = new ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      child: ListView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: context.read<MyProvider>().discover.asMap().entries.map((e) =>
            TextButton(
                onPressed: () {
                  setState(() {
                    context.read<MyProvider>().discoverPress = e.key;
                    controller.jumpTo(controller.offset / 2);
                  });
                },
                child:Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: (context.read<MyProvider>().discoverPress == e.key)
                          ? Colors.amber
                          : Colors.white),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(e.value,
                      style: TextStyle(
                          color: (context.read<MyProvider>().discoverPress == e.key)
                              ? Colors.amber
                              : Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                ))).toList(),
      ),
    );
  }
}
