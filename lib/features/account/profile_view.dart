import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rekoda_app/features/Transactions/custom_bottom_navigation_bar.dart';
import 'package:rekoda_app/features/account/settings.dart';
import 'package:rekoda_app/features/account/user_view.dart';

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
                        'Enny',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Enny@mail.com',
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
            top: 120,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E9FF),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/User.svg',
                          width: 24,
                          height: 24,
                          color: const Color(0xFF928FFF),
                        ),
                      ),
                    ),
                    title: const Text('My Account'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UserView()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E9FF),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/Cog.svg',
                          width: 24,
                          height: 24,
                          color: const Color(0xFF928FFF),
                        ),
                      ),
                    ),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Settings()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E9FF),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/Question.svg',
                          width: 24,
                          height: 24,
                          color: const Color(0xFF928FFF),
                        ),
                      ),
                    ),
                    title: const Text('Help Center'),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E9FF),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/Phone.svg',
                          width: 24,
                          height: 24,
                          color: const Color(0xFF928FFF),
                        ),
                      ),
                    ),
                    title: const Text('Contact'),
                    onTap: () {
                    },
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
