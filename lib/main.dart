import 'package:flutter/material.dart';
import 'package:test_exam_1/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List',
      home: Home(),
    );
  }
}
