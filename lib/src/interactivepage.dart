import 'package:flutter/material.dart';
import 'contentment.dart';
import 'login.dart';

class ImageSliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: ImageSliderScreen(),
      ),
    );
  }
}

class ImageSliderScreen extends StatefulWidget {
  @override
  _ImageSliderScreenState createState() => _ImageSliderScreenState();
}

class _ImageSliderScreenState extends State<ImageSliderScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> _images = [
    'assets/chittaral1.jpg',
    'assets/chittaral2.jpg',
    'assets/chittaral3.jpg',
    'assets/chittaral4.jpg'
    // Add more image paths as necessary
  ];

  bool showFirstCharacter = true;
  bool showSecondCharacter = false;

  @override
  void initState() {
    super.initState();

    // First part of initState()
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showFirstCharacter = false;
        showSecondCharacter = true;
      });
    });

    // Second part of initState()
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 545,
            left: 75,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE7B948), // Change color as needed
              ),
            ),
          ),
          Positioned(
            top: 650,
            child: Container(
              width: 430,
              height: 280,
              child: Image.asset(
                'assets/mountain.png', // Replace 'your_image.png' with the appropriate image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 350, left: 30, right: 30),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 210,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _images.length,
                    itemBuilder: (context, index) {
                      return Positioned(
                        top: -8,
                        left: 36 + (index * 70),
                        child: ClipRRect(
                          child: Image.asset(
                            _images[index],
                            width: 219,
                            height: 119,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 95,
            left: 30,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 212,
                height: 235,
                child: Image.asset(
                  'assets/character.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 455,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(_currentPage),
            ),
          ),
          Positioned(
            top: 790,
            left: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContentPage()),
                );
              },
              child: Text(
                'To Know More',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                backgroundColor: Color(0xFFE7B948),
              ),
            ),
          ),
          Positioned(
            top: 760,
            left: 78,
            child: Container(
              width: 290,
              height: 50,
              child: Text(
                'We are here to make your experience unforgettable. Could you please answer a few questions?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 3,
            left: 3,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(225, 163, 8, 0.25),
              radius: 20,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },

                  ),
                ],
              ),
            ),
          ),
          if (showFirstCharacter)
            Positioned(
              top: 340,
              left: -40,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/box.png',
                    width: 350,
                    height: 170.22,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 105, // Adjust this value to position the text vertically
                    left: 60, // Adjust this value to position the text horizontally
                    child: Text(
                      'Your Text Here ',
                      style: TextStyle(
                        color: Colors.white, // Adjust the color as needed
                        fontSize: 10, // Adjust the font size as needed
                        fontWeight: FontWeight.bold, // Adjust the font weight as needed
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (showSecondCharacter)
            Positioned(
              top: 340,
              left: 70,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/box2.png',
                    width: 350,
                    height: 170.22,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 105, // Adjust this value to position the text vertically
                    left: 65, // Adjust this value to position the text horizontally
                    child: Text(
                      'Second Character  ',
                      style: TextStyle(
                        color: Colors.white, // Adjust the color as needed
                        fontSize: 10, // Adjust the font size as needed
                        fontWeight: FontWeight.bold, // Adjust the font weight as needed
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Positioned(
            top: 58,
            left: 50,
            child: Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color.fromRGBO(225, 163, 8, 0.75),
              ),
              child: Center(
                child: Text(
                  'Chitharal Jain Rock Cut Temple',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator(int currentPage) {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == i ? Color(0xFFE7B948) : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
