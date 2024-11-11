import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  @override
  //  validating phone numbers
  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    String pattern = r'(^[1-10]{10,10}$)';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Enter a valid phone number (10-15 digits)';
    }
    return null;
  }

  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
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
      body:Center(
              child: Container(
                width: screenWidth > 200?300 : screenWidth * 0.08,
                height: screenHeight > 400? 600 : screenHeight * 0.19,
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                              ),

                            ),
                          validator: _validatePhoneNumber
                          ),
                      ),
                    ),
    );
  }
}