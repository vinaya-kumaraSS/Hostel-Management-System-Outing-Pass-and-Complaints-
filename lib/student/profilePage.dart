import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromARGB(255, 115, 182, 237),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 110, right: 110, top: 20),
            child: Icon(
              Icons.person,
              size: 120,
            ),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.pen),
            title: const Text('USN'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Name'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.codeBranch),
            title: const Text('Branch'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.calendar),
            title: const Text('Year'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.code),
            title: const Text('Block'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.hotel),
            title: const Text('Room no'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.phone),
            title: const Text('Phone'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.message),
            title: const Text('Email'),
          ),
        ],
      ),
    );
  }
}
