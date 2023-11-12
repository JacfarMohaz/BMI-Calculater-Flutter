import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(BMICalculaterApp());
}

class BMICalculaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: HomeScreen(),
    );
  }
}
