import 'package:flutter/material.dart';
import 'src/welcome_screen.dart'; // Replace with your project name


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SafeArea(
        child: WelcomeScreen(), // Set WelcomeScreen as the home screen
      ),
    );
  }
}
