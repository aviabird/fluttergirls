import 'package:fluttergirls/views/layout_template/layout_template.dart';
import 'package:flutter/material.dart';
import 'package:fluttergirls/location.dart';
void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: Theme.of(context).textTheme.apply(
        //   fontFamily: 'Open Sans'
        // )
      ),
      home: LayoutTemplate(),
    );
  }
}




