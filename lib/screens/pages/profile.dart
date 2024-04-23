import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:test/screens/pages/profile/setting.dart';
import 'package:test/widget/custom_list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 70;
    const double backgroundHeight = 200;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        backgroundColor: Colors.deepOrange[300],
        leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: Stack(
        children: [
          Positioned(
            child: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: Colors.deepOrange[300],
                height: backgroundHeight,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child:
                   Column(
                    children: [
                      const SizedBox(height: 80),
                      const Text(
                        'Amani Lina',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'AmaniLina12@Gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      const Divider(),
                      CustomListTile(
                        onTap: () {
                          print('Notifications tapped');
                        },
                        icon: Icons.notifications,
                        title: 'Notifications',
                      ),
                      CustomListTile(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SettingsPage();
                          }));
                        },
                        icon: Icons.settings,
                        title: 'Settings',
                      ),
                      CustomListTile(
                        onTap: () {
                          print('About tapped');
                        },
                        icon: Icons.info,
                        title: 'About',
                      ),
                      CustomListTile(
                        onTap: () {
                          print('Logout tapped');
                        },
                        icon: Icons.exit_to_app,
                        title: 'Logout',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width / 2 - avatarRadius,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: avatarRadius,
              child: CircleAvatar(
                radius: avatarRadius - 1,
                backgroundColor: Color(0xff3C3B3A),
                child: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
