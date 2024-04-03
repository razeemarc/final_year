import 'package:flutter/material.dart';
import 'src/welcome_screen.dart'; // Replace with your project name


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
