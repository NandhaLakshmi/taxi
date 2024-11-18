import 'package:demo/style/button.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ResponsiveLayout());
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive SignUp Form'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Phone Layout
            return _buildSignUpForm(context, isPhoneLayout: true);
          } else {
            // Laptop Layout
            return Center(
              child: Container(
                width: 500,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: _buildSignUpForm(context, isPhoneLayout: false),
              ),
            );
          }
        },
      ),
    );
  }

  // Function to build the signup form inside a container box
  Widget _buildSignUpForm(BuildContext context, {required bool isPhoneLayout}) {
    return SingleChildScrollView(
      child: Form(
        child:Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100),


              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: isPhoneLayout ? 24 : 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'PhoneNumber',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(height: 24),
            ],
          ),
          ),
        )

        )

    );
  }
}