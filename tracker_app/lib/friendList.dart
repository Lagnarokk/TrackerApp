import 'package:flutter/material.dart';
//import 'main.dart';
import 'Data/User.dart';

class friendList extends StatelessWidget {
  const friendList({super.key});

  @override
  Widget build(BuildContext context) {
    // List of friends 
    List<User> friends = [
      User(
        userName: 'amigo pepe',
        userId: '123456',
        email: 'elpepe@example.com',
        password: '********',
        profileImagePath: 'assets/icons/skull.svg',
      )
      //add more users here
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Friend List'),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(friends[i].userName),
            onTap: () {
              // Functionality
            },
          );
        },
      ),
    );
  }
}

