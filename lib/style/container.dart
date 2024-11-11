import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body:
        Center(
            child: Container(
              width: screenWidth > 200?300 : screenWidth * 0.08,
              height: screenHeight > 400? 600 : screenHeight * 0.19,
              color: Colors.limeAccent,
            )
        )
    );
  }
}// Responsive width