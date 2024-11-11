import 'package:flutter/material.dart';


class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    // Determine a base font size based on the screen width or height
    double fontSize = screenWidth * 0.05;  // 5% of screen width
    double fontSize1 = screenWidth * 0.01;  // 5% of screen width

    return Scaffold(
        body: Column(
            children:[
              Center(
                child:Container(
                  padding: EdgeInsets.all(2),
                  color: Colors.yellow,
                  child: Text(
                      'CABCA',
                      style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold)
                  ),
                ), ),
              Center(
                child:Container(
                  padding: EdgeInsets.all(2),

                  child: Text(
                      'care&comfort',
                      style: TextStyle(fontSize: fontSize1,)
                  ),
                ), ),

            ]

        )
    );
  }
}