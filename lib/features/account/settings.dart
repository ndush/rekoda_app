import 'package:flutter/material.dart';
import 'package:rekoda_app/features/dashboard/existing_user.dart';



class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Settings"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExistingUser()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        children: [
          // General Section
          const ListTile(
            title: Text(
              "General",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            title: const Text("Reset Password"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle Reset Password action
            },
          ),
          ListTile(
            title: const Text("Notifications"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle Notifications action
            },
          ),
          // Security Section
          const ListTile(
            title: Text(
              "Security",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            title: const Text("Privacy Policy"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle Privacy Policy action
            },
          ),
          const ListTile(
            title: Text("Choose what data you share with us"),
          ),
          // Logout Button
          const SizedBox(height: 20.0), // Add some space before the logout button
          ElevatedButton(
            onPressed: () {
              // Handle Logout action
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              backgroundColor: Colors.red, // Customize button color as needed
            ),
            child: const Text(
              "Logout",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Brees © 2021 v1.0
          const ListTile(
            title: Text(
              "Brees © 2021 v1.0",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
