import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rekoda_app/features/login/pages/welcome_back.dart';


class Settings extends StatelessWidget {
  const Settings({Key? key});

  Future<void> _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        children: [
          // General Section
          const ListTile(
            title: Text(
              "General",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Reset Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text(
              "Notifications",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          // Security Section
          const ListTile(
            title: Text(
              "Security",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Privacy Policy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          const ListTile(
            title: Text("Choose what data you share with us"),
          ),
          // Logout Button
          const SizedBox(height: 180.0),
          ElevatedButton(
            onPressed: () {
              _logout(context);
            },
            style: ElevatedButton.styleFrom(
              padding:
              const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              backgroundColor: Colors.white,
            ),
            child: Text(
              "Logout",
              style: TextStyle(
                fontSize: 16.0,
                color: const Color(0xFF1E429F),
              ),
            ),
          ),
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
