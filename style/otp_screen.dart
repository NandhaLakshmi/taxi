import 'package:flutter/material.dart';
import 'package:demo/style/theme.dart';
import 'package:provider/provider.dart';
class OtpScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
  // Get the screen size for responsiveness
  var screenSize = MediaQuery.of(context).size;
  var isWidth = screenSize.width > 600;
  var isHeight = screenSize.height > 600;
  return Scaffold(
    appBar: AppBar(
      title: Text('Login'),
      actions: [
        IconButton(
          icon: Icon(Icons.brightness_6),
          onPressed: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
        ),
      ],
    ),
    body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text(
                'OTP Verfication',
                style: TextStyle(
                  fontSize: isWidth ? 24 : 18, // Larger font for tablets
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Send your OTP in phonenumber',
                style: TextStyle(
                  fontSize: isWidth ? 10 : 18, // Larger font for tablets
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height:40 ),
              // OTP Input Fields
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: List.generate(4, (index) => _buildOtpField(isWidth,isHeight)),
              ),
              SizedBox(height: 30),
              // Generate OTP Button
              Text(
                'Did not your otp?Resend code',
                style: TextStyle(
                  fontSize: isWidth ? 10 : 18, // Larger font for tablets
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],

          ),
        ),

    );
}

// OTP Input Field widget
Widget _buildOtpField(bool isLargeScreen,bool isHeight) {
  return Container(
    width: isLargeScreen ? 50:5,
    height: isHeight?50:5,
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: isLargeScreen ? 10 : 18),
      keyboardType: TextInputType.number,
      maxLength: 1,
    ),
  );
}
}