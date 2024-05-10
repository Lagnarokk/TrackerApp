import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'main.dart';
import 'Data/User.dart';

class playerProfile extends StatelessWidget {
  final User user; 

  const playerProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player Profile'),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // User profile icon
                SvgPicture.asset(
                  user.profileImagePath,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 16),
                // User Name
                Text(
                  'User Name: ${user.userName}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                // User ID
                Text(
                  'User ID: ${user.userId}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                // Email
                Text(
                  'Email: ${user.email}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                // Password
                Text(
                  'Password: ${user.password}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
