import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'listOfGames.dart'; 
import 'playerProfile.dart';
import 'trainingRoutineDetail.dart';

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
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AccessScreen(),
    );
  }
}

class AccessScreen extends StatelessWidget {
  const AccessScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainMenuScreen()),
            );
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
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
                    MaterialPageRoute(builder: (context) => const playerProfile()),
                  );
              },
              child: const Text('Player Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the training routine detail screen
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const trainingRoutineDetail()),
                  );
              },
              child: const Text('Training Routine Detail'),
            ),
          ],
        ),
      ),
    );
  }
}

class GamesListScreen extends StatelessWidget {
  const GamesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement screen to list games of interest
    return Container();
  }
}

class PlayerProfileScreen extends StatelessWidget {
  const PlayerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement screen to display player's profile
    return Container();
  }
}

class TrainingRoutineDetailScreen extends StatelessWidget {
  const TrainingRoutineDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement screen to show details of a training routine
    return Container();
  }
}
