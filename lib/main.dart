import 'package:iamomjogani/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Om Jogani',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "SF Pro Text",
      ),
      home: HomeScreen(),
    );
  }
}
