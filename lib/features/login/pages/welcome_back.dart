import 'package:flutter/material.dart';
import 'package:rekoda_app/features/signup/pages/create_account.dart';
import 'package:rekoda_app/shared/widget/custom_text_field.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                label: 'E-mail',
                onChanged: (newText) {},
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                label: 'Password',
                onChanged: (newText) {},
              ),
              const SizedBox(height: 20.0), // Add space between password field and Forgot Password?
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle Forgot Password button tap
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0), // Increased padding for the button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle register button tap
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 140.0, vertical: 10.0), // Increased padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Circular edged button
                    ),
                    backgroundColor: const Color(0xFF680DB3), // Set background color here
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0), // Added space between login button and text button
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const CreateAccountScreen();
                        },)
                        );
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
