import 'package:flutter/material.dart';
import 'package:flutter_mvc_pattern/src/view/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HomePage(),
    );
  }
}
