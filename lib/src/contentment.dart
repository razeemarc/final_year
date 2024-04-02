import 'package:flutter/material.dart';
import 'feedback.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This line removes the debug banner
      home: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RatingScreen()),
            );
          },
          child: Scaffold(
            body: Stack(
              children: [
                // Text Box at the top of the second page
                Positioned(
                  top: 58,
                  left: 55,
                  child: Container(
                    width: 280,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Color.fromRGBO(225, 163, 8, 0.75),
                    ),
                    child: Center(
                      child: Text(
                        'Historical Contents Of Chittaral',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                // Image
                Positioned(
                  top: 140,
                  left: 45,
                  child: Container(
                    width: 319,
                    height: 219,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/img1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // Text Below Image
                Positioned(
                  top: 390,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: 400,
                    height: 680,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(249, 246, 246, 0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        '               Chittaral, also known as Chittaral Rock Cut Temple, is a historically significant site located in Chittaral village near the town of Kanyakumari in Tamil Nadu, India. The primary attraction of this site is its rock-cut sculptures dating back to the 8th century AD. Chittaral is renowned for its Jain rock-cut sculptures, which are believed to have been created during the Pandyan dynasty rule. These sculptures depict various Jain Tirthankaras and deities, including Mahavira, Parshvanatha, and Bahubali. The exact dating of the sculptures is uncertain, but they are generally believed to date back to around the 8th century AD.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                // Back Button
                Positioned(
                  top: 3,
                  left: 3,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(225, 163, 8, 0.25),
                    radius: 20,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}