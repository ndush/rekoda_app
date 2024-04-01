import 'package:flutter/material.dart';
import 'package:rekoda_app/features/launch/pages/get_started.dart';
import 'package:rekoda_app/features/launch/pages/launch.dart';
import 'package:rekoda_app/features/launch/pages/onboarding_1.dart';
import 'package:rekoda_app/features/launch/pages/onboarding_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekoda App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          // No primarySwatch specified
          backgroundColor: const Color(0xFF680DB3),
          errorColor: const Color(0xFFB00020),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LaunchPage(), // Landing page route
        '/onboarding_1': (context) => Onboarding1(),
        '/onboarding_2': (context) => Onboarding2(),
        '/get_started': (context) => GetStarted(),
        // Add other routes here as needed
      },
    );
  }
}
