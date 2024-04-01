import 'package:flutter/material.dart';
import 'package:rekoda_app/features/launch/pages/get_started.dart';

import 'package:rekoda_app/gen/assets.gen.dart';

class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              SizedBox(
                height: 350,
                width: 350,
                child: Assets.analysis.image(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 20, // Adjust width as needed
                    height: 10, // Adjust height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,// Circular edges

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 20, // Adjust width as needed
                    height: 10, // Adjust height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), // Circular edges
                      color: Color(0xFF680DB3),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 20, // Adjust width as needed
                    height: 10, // Adjust height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), // Circular edges
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Documentation of business processes',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        color: Color(0xFF680DB3),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Bookkeeping, invoice, inventory and dashboard  ',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 1.2, // 120% line-height
                        color: Color(0xFF2A3143),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 100), // Added some extra space at the bottom
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle skip button tap
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    onPressed: () {
                      Navigator.push( // Navigate to Onboarding2 page
                        context,
                        MaterialPageRoute(builder: (context) => GetStarted()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward),
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
