import 'package:flutter/material.dart';
import 'package:flutter_jetcaster_clone/src/main_page.dart';
import 'package:flutter_jetcaster_clone/src/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => MyProvider())
      ],
      child: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (BuildContext context, value, Widget child) =>
      AnimatedContainer(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              value.colors[value.onPageChanged],
              Colors.black,
            ])),
        duration: Duration(milliseconds: 800),
        child: MainPage(),
      ),
    );
  }
}




