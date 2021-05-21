import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/provider.dart';
import 'package:provider/provider.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({Key key}) : super(key: key);

  @override
  _MyBottomState createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              context.read<MyProvider>().press();
            });
          },
          child: Column(
            children: [
              Text('Your library',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),),
              SizedBox(height: 8.0,),
              Container(
                color: context.read<MyProvider>().onPressed
                    ? Colors.amber
                    : Colors.transparent,
                height: 5,
                width: 150,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(0.5)
                // ),
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              context.read<MyProvider>().press();
            });
          },
          child: Column(
            children: [
              Text('Discover',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),),
              SizedBox(height: 8.0,),
              Container(
                color: context.read<MyProvider>().onPressed
                    ? Colors.transparent
                    : Colors.amber,
                height: 5,
                width: 150,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(0.5)
                // ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
