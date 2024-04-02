import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Thank You'),
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 245,
                child: Image.asset(
                  'assets/tick.jpeg', // Assuming tick.png is in the assets folder
                  width: 100, // Adjust the width as needed
                  height: 100, // Adjust the height as needed
                ),
              ),
              Positioned(
                bottom: 390,
                child: Text(
                  'Thank you for your valuable feedback!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
