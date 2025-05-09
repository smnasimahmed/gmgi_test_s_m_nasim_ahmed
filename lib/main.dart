import 'package:flutter/material.dart';
import 'package:test_exam_1/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List',
      home: Home(),
    );
  }
}
