import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rekoda_app/features/signup/bloc/authentication_cubit.dart';
import 'package:rekoda_app/shared/widget/custom_text_field.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late AuthenticationCubit _authCubit;

  String name = "";
  String emailAddress = "";
  String password = "";
  String confirmPassword = "";

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthenticationCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
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
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
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
              onChanged: (newText) {
                setState(() {
                  emailAddress = newText;
                });
              },
            ),
            CustomTextField(
              label: 'Password',
              onChanged: (newText) {
                setState(() {
                  password = newText;
                });
              },
            ),
            CustomTextField(
              label: 'Confirm Password',
              onChanged: (newText) {
                setState(() {
                  confirmPassword = newText;
                });
              },
            ),
            const SizedBox(height: 40.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_isUserInputValid()) {
                    _authCubit.signUpWithEmailAndPassword(emailAddress, password);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 140.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: const Color(0xFF680DB3),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isUserInputValid() {
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name cannot be empty'),
        ),
      );
      return false;
    } else if (emailAddress.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email address cannot be empty'),
        ),
      );
      return false;
    } else if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password cannot be empty'),
        ),
      );
      return false;
    } else if (confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Confirm Password cannot be empty'),
        ),
      );
      return false;
    } else if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match'),
        ),
      );
      return false;
    }
    return true;
  }
}
