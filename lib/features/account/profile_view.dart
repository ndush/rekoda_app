import 'package:flutter/material.dart';
import 'package:rekoda_app/features/Transactions/custom_bottom_navigation_bar.dart';
import 'package:rekoda_app/features/account/settings.dart';
import 'package:rekoda_app/features/account/user_view.dart'; // Import your UserView

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text(
              'Profile',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                // Navigate to UserView when "My Account" is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserView()),
                );
              },
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.deepPurple,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  radius: 32,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'johndoe@example.com',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 120, // Adjusted value to push it below the profile image
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('My Account'),
                    onTap: () {
                      // Navigate to UserView when "My Account" is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UserView()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      // Navigate to Settings view when "Settings" is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Settings()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text('Help Center'),
                    onTap: () {
                      // Handle help center action
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.contact_phone),
                    title: const Text('Contact'),
                    onTap: () {
                      // Handle contact action
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'You joined Brees on September 2021. It’s been 1 month since then and our mission is still the same, help you better manage your finance like a brees.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}


