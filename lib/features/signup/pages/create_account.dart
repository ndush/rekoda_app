import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rekoda_app/shared/widget/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'verify_account.dart'; // Import VerifyAccount

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late String name = "";
  late String emailAddress = "";
  late String password = "";
  late String confirmPassword = "";
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back arrow
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                SvgPicture.asset(
                  'assets/Arrow.svg',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: const TextStyle(
                  color: Color(0xFF1F2A37),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Login',
                    style: const TextStyle(
                      color: Color(0xFF680DB3),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            CustomTextField(
              label: 'Name',
              onChanged: (newText) {
                setState(() {
                  name = newText;
                });
              },
            ),
            CustomTextField(
              label: 'E-mail',
              isEmail: true,
              onChanged: (newText) {
                setState(() {
                  emailAddress = newText;
                });
              },
            ),
            const Text(
              'must contain 8 characters',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            CustomTextField(
              label: 'Password',
              isPassword: true,
              onChanged: (newText) {
                setState(() {
                  password = newText;
                });
              },
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscurePassword = !isObscurePassword;
                  });
                },
                child: Icon(
                  isObscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              ),
            ),
            CustomTextField(
              label: 'Confirm Password',
              isPassword: true,
              onChanged: (newText) {
                setState(() {
                  confirmPassword = newText;
                });
              },
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscurePassword = !isObscurePassword;
                  });
                },
                child: Icon(
                  isObscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 44,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0), // Adjusted padding
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF680DB3), // Background color
                    ),
                    child: TextButton(
                      onPressed: _signup,
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By continuing, you agree to our ',
                      style: const TextStyle(
                        color: Color(0xFF1F2A37),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms of Service',
                          style: const TextStyle(
                            color: Color(0xFF3C9AFB),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: Color(0xFF1F2A37),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(
                            color: Color(0xFF3C9AFB),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Color(0xFF1F2A37),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signup() async {
    if (_isUserInputValid()) {
      try {
        final UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
          email: emailAddress,
          password: password,
        );

        // Send email verification
        await userCredential.user!.sendEmailVerification();

        // Store user data in Firestore
        await _storeUserData(emailAddress, name);

        // Navigate to VerifyAccount screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerifyAccount(emailAddress: emailAddress),
          ),
        );

        // Inform the user about successful registration
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Registration successful! Please check your email to verify your account.'),
          ),
        );
      } catch (e) {
        // Handle registration errors
        print('Error registering user: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'An error occurred during registration. Please try again later.'),
          ),
        );
      }
    }
  }

  bool _isUserInputValid() {
    if (name.isEmpty ||
        emailAddress.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all the fields')),
      );
      return false;
    } else if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match')),
      );
      return false;
    } else if (password.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Password must be at least 8 characters long')),
      );
      return false;
    }
    return true;
  }

  Future<void> _storeUserData(String email, String name) async {
    await _firestore.collection('users').doc(email).set({
      'email': email,
      'name': name,
    });
  }
}
