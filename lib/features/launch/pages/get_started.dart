import 'package:flutter/material.dart';
import 'package:rekoda_app/gen/assets.gen.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define custom button color
    final buttonColor = Color(0xFF680DB3);

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
                child: Assets.asset.image(), // Use the generated image widget
              ),
              SizedBox(height: 20),
              // Your indicators row goes here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Indicator containers
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 20,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 20,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 20,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF680DB3),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              // Your text widgets go here
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Customer friendly',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        color: Color(0xFF680DB3),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Seamless customer experience at every step of bookkeeping ',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        color: Color(0xFF2A3143),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40.0), // Add bottom padding
        child: BottomAppBar(
          color: Colors.white,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Get Started button tap
                      Navigator.push(
                        // Navigate to GetStarted page
                        context,
                        MaterialPageRoute(builder: (context) => GetStarted()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10), // Increase padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // Make it square edged
                      ),
                      backgroundColor: buttonColor, // Set the background color of the button
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    child: Text(
                      'Get Started',
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
        ),
      ),
    );
  }
}
