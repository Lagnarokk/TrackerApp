import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'listOfGames.dart'; 
import 'playerProfile.dart';
import 'trainingRoutines.dart';
import 'friendList.dart';
import 'Data/User.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker App',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AccessScreen(),
    );
  }
}

class AccessScreen extends StatelessWidget {
  const AccessScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracker App'),
        actions: [
           IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              // Close the app
              SystemNavigator.pop();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SVG image
            SvgPicture.asset(
              'assets/icons/titleIcon.svg',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 16),
            // Login button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainMenuScreen()),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    var user1 = User(
      userName: 'juanito',
      userId: '123456',
      email: 'elmarcianito@example.com',
      password: '********',
      profileImagePath: 'assets/icons/skull.svg',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        automaticallyImplyLeading: false, // Remove the default back button
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the games list screen
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const listOfGames()),
                  );
              },
              child: const Text('List of Games'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the player profile screen
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => playerProfile(user: user1)),
                  );
              },
              child: const Text('Player Profile'),
            ),
            
            ElevatedButton(
              onPressed: () {
                // Navigate to the training routine detail screen
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const trainingRoutines()),
                  );
              },
              child: const Text('Training Routines'),
             ),
             ElevatedButton(
              onPressed: () {
                // Navigate to the training routine detail screen
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const friendList()),
                  );
              },
              child: const Text('Friend List'),
             ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

