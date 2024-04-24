import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:rekoda_app/features/signup/pages/email_verified.dart';

class VerifyAccount extends StatelessWidget {
  final String emailAddress;

  const VerifyAccount({super.key, required this.emailAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top, // To adjust for the status bar height
                ),
                Image.asset(
                  'assets/env.png',
                  width: 237,
                  height: 159,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                const Text(
                  'We have sent you an email',
                  style: TextStyle(
                    color: Color(0xFF1F2A37),
                    fontFamily: 'Outfit',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Click on the email verification link sent to you on  $emailAddress:',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Then click on next',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'Didn”t Receive the email yet? ',
                    style: const TextStyle(
                      color: Color(0xFF1F2A37),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Send Again',
                        style: const TextStyle(
                          color: Color(0xFF000000),
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                         context,
                          MaterialPageRoute(builder: (context) => const EmailVerified()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF680DB3),
                    padding: const EdgeInsets.symmetric(horizontal: 134, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Open Email App',
                    style: TextStyle(
                      color: Color(0xFFE7E7E7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
