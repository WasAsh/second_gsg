import 'package:flutter/material.dart';
import 'package:secondgsg/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Second gsg',
      home: Page2(),
    );
  }
}
