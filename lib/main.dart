import 'package:flutter/material.dart';
import 'package:secondlesson/screen/hmeworkscrean.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homework()
    );
  }
}
