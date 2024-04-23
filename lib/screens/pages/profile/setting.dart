import 'package:flutter/material.dart';
import 'package:test/screens/pages/profile/edit_profil.dart';
import 'package:test/widget/custom_list_tile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool light = true;
  String dropdownValue = 'English'; // Define dropdownValue here
  List<String> list = <String>['English', 'Arabic', 'Russian', 'French'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC),
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
                  child: Column(
                    children: [
                      CustomListTile(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const EditProfilePage();
                          }));
                        },
                        icon: Icons.edit,
                        title: 'Edit Profile',
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 20,
                      ),
                      CustomListTile(
                        onTap: () {},
                        icon: Icons.lock,
                        title: 'Change password',
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 20,
                      ),
                      CustomListTile(
                        onTap: () {
                          print('Delete account');
                        },
                        icon: Icons.delete,
                        title: 'Delete account',
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 20,
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
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Notifications ",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC),
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Active Notification",
                            style: TextStyle(fontSize: 19),
                          ),
                          Switch(
                            value: light,
                            activeColor: const Color(0xffA2DB31),
                            onChanged: (bool value) {
                              setState(() {
                                light = value;
                              });
                            },
                          )
                        ],
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.language),
                          const Text(
                            "Language",
                            style: TextStyle(fontSize: 20),
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            elevation: 16,
                            style: const TextStyle(color: Color(0xff868686)),
                            underline: Container(
                              height: 2,
                              color: const Color(0xff868686),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
