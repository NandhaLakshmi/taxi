import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
class Owner_Signup extends StatelessWidget {
  @override
  String? _selectedGender;
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    var screenHeight = MediaQuery
        .of(context)
        .size
        .height;
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
        child: Container(
            width: screenWidth > 200 ? 300 : screenWidth * 0.08,
            height: screenHeight > 400 ? 600 : screenHeight * 0.19,
            padding: const EdgeInsets.all(16.0),
            color: Colors.yellow,
            child: Column(
              children: [
                SizedBox(height: 130),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter the Username',
                    border: OutlineInputBorder(
                    ),
                  ),

                ),
                SizedBox(height: 10),

                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter the PhoneNumber',
                    border: OutlineInputBorder(
                    ),
                  ),

                ),
                SizedBox(height: 10),

                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter the Address',
                    border: OutlineInputBorder(
                    ),
                  ),

                ),
                SizedBox(height: 10),

                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter the city',
                    border: OutlineInputBorder(
                    ),
                  ),

                ),
                SizedBox(height: 10),

                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter the Pincode',
                    border: OutlineInputBorder(
                    ),
                  ),

                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Select Gender',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedGender,
                  items: ['Male', 'Female', 'Other']
                      .map((gender) =>
                      DropdownMenuItem(
                        value: gender,
                        child: Text(gender),
                      ))
                      .toList(),
                  onChanged: (String? newValue) {},
                  validator: (value) =>
                  value == null
                      ? 'Please select a gender'
                      : null,
                ),


                // Submit Button

              ],
            )

        ),
      ),
    );
  }
}
