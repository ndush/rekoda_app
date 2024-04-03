import 'package:flutter/material.dart';
import 'package:rekoda_app/gen/assets.gen.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(),
        title: const Text(""),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/onboarding_1'); // Navigate to Onboarding_1
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 200.0), // Adjust top padding as needed
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350, // Adjust height as needed
                width: 350, // Adjust width as needed
                child: Assets.launch.image(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
