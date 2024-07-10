import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    description: 'Valorant is a tactical first-person shooter game where precise gunplay meets unique agent abilities. Join your team of five and face off against opponents to plant or defuse the Spike in a round-based combat system.',
    urlAccess: 'https://playvalorant.com/',
    urlImage: 'assets/icons/valorant.png',
    isMultiplayer: true,
    year: 2020,
    genre: 'First-Person Shooter',
    rating: 6.4,
  ),
  Game(
    name: 'Fortnite',
    description: 'Fortnite is a battle royale game where 100 players fight to be the last one standing. Players can build structures, craft weapons, and outplay their opponents in fast-paced multiplayer matches.',
    urlAccess: 'https://www.fortnite.com',
    urlImage: 'assets/icons/fortnite.jpg',
    isMultiplayer: true,
    year: 2017,
    genre: 'Battle Royale',
    rating: 5.5,
  ),
  Game(
    name: 'Call of Duty: Warzone',
    description: 'Call of Duty: Warzone is a free-to-play battle royale game part of the Call of Duty series. It features large-scale combat with up to 150 players in a single match, various vehicles, and intense gunfights across a massive map.',
    urlAccess: 'https://www.callofduty.com/warzone',
    urlImage: 'assets/icons/warzone.png',
    isMultiplayer: true,
    year: 2020,
    genre: 'Battle Royale',
    rating: 6.6,
  ),
  Game(
    name: 'Apex Legends',
    description: 'Apex Legends is a free-to-play battle royale game set in the Titanfall universe. Players choose from a diverse roster of legends, each with unique abilities, and compete in squads to become the last team standing in fast-paced matches.',
    urlAccess: 'https://www.ea.com/games/apex-legends',
    urlImage: 'assets/icons/apex.jpg',
    isMultiplayer: true,
    year: 2019,
    genre: 'Battle Royale',
    rating: 7.3,
  ),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GameDetailScreen(game: games[i]),
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

  const GameDetailScreen({required this.game});

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
            Image.asset(
              game.urlImage,
              height: 200, // Ajusta el tamaño según sea necesario
              width: 200, // Ajusta el tamaño según sea necesario
            ),
            SizedBox(height: 16),
            Text('${game.description}'),
            Text('Year: ${game.year}'),
            Text('Genre: ${game.genre}'),
            Text('URL Access: ${game.urlAccess}'),
            Text('Is Multiplayer: ${game.isMultiplayer}'),
            ElevatedButton(
              onPressed: () {
                // Navigate to the account screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountScreen(),
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
  const AccountScreen();

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
            Text('User Name: Juanito'), // Cambiar por la lógica de obtención de datos del usuario
            Text('User ID: 123456'), // Cambiar por la lógica de obtención de datos del usuario
            Text('Email: elmarcianito@example.com'), // Cambiar por la lógica de obtención de datos del usuario
            Text('Password: ********'), // Cambiar por la lógica de obtención de datos del usuario
          ],
        ),
      ),
    );
  }
}
