import 'package:flutter/material.dart';
import 'package:lexa_ai/screens/chat_screen.dart';
import 'dart:ui';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Calculate responsive sizes
    final ovalSize = screenWidth * 0.5; // Adjust this ratio as needed
    final imageSize = screenWidth * 0.4; // Adjust this ratio as needed

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: screenWidth * 1, // 90% of screen width
          height: screenHeight * 1, // 80% of screen height
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              // Blurred Oval Backgrounds
              Positioned(
                left: -ovalSize * 0.5,
                top: screenHeight * 0.15,
                child: Container(
                  width: ovalSize,
                  height: ovalSize,
                  decoration: ShapeDecoration(
                    color: Color(0xFF004FC6).withOpacity(0.2),
                    shape: OvalBorder(),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth - ovalSize * 0.5,
                top: screenHeight * 0.65,
                child: Container(
                  width: ovalSize,
                  height: ovalSize,
                  decoration: ShapeDecoration(
                    color: Color(0xFF004FC6).withOpacity(0.3),
                    shape: OvalBorder(),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 40, sigmaY: 10),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),

              // Main Content
              Positioned(
                top: screenHeight * 0.2,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.easeInOut,
                      width: imageSize,
                      height: imageSize,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/cratoss_logo.png'), // Changed from NetworkImage to AssetImage
                          fit: BoxFit.cover,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(seconds: 2),
                      curve: Curves.linear,
                      child: Text(
                        'Welcome to',
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontSize: screenWidth * 0.05, // Responsive font size
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(seconds: 2),
                      curve: Easing.standard,
                      child: Text(
                        'Cratoss',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.14, // Responsive font size
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      'Your Personal IOT\n Assistant',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.06, // Responsive font size
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF004FC6),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.1,
                            vertical: screenHeight * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: ChatScreen()));
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.04, // Responsive font size
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
