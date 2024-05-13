import 'package:flutter/material.dart';
//import 'main.dart';
import 'Data/Game.dart';
import 'Data/User.dart';
import 'trainingRoutines.dart';

class listOfGames extends StatelessWidget {
  const listOfGames({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<Game> games = [
      Game(
        name: 'Valorant',
        description: 'Description of the Game',
        urlAccess: 'URL of Game 1',
        urlImage: 'Image URL of Game 1',
        isMultiplayer: true,
      ),
      //add mor games here
    ];

    List<User> users = [
      User(
        userName: 'xxjuanitoxx',
        userId: '123456',
        email: 'elmarcianito@example.com',
        password: '********',
        profileImagePath: 'assets/icons/skull.svg',
      )
      //add more users here
    ];
 return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Games'),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(games[i].name),
            onTap: () {
              // Navigate to the game detail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GameDetailScreen(game: games[i], user: users[i]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class GameDetailScreen extends StatelessWidget {
  final Game game;
  final User user;

  const GameDetailScreen({required this.game, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${game.description}'),
            Text('URL Access: ${game.urlAccess}'),
            Text('URL Image: ${game.urlImage}'),
            Text('Is Multiplayer: ${game.isMultiplayer}'),
            ElevatedButton(
              onPressed: () {
                // Navigate to the account screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountScreen(user: user),
                  ),
                );
              },
              child: const Text('Account'),
              ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the training routine list
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => trainingRoutines(),
                  ),
                );
              },
              child: const Text('Choose Routine'),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  final User user;

  const AccountScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Name: ${user.userName}'),
            Text('User ID: ${user.userId}'),
            Text('Email: ${user.email}'),
            Text('Password: ${user.password}'),
          ],
        ),
      ),
    );
  }
}
