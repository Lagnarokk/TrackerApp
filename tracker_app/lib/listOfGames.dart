import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Data/Game.dart';
import 'Data/Routine.dart';
import 'Data/User.dart';
import 'trainingRoutines.dart';
import 'friendList.dart';

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

  GameDetailScreen({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  game.urlImage,
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 16),
                Text(game.description),
                Text('Year: ${game.year}'),
                Text('Genre: ${game.genre}'),
                Text('URL Access: ${game.urlAccess}'),
                Text('Is Multiplayer: ${game.isMultiplayer}'),
                Text('Rating: ${game.rating}'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrainingRoutinesScreen(game: game),
                      ),
                    );
                  },
                  child: const Text('Choose Routine'),
                ),
                SizedBox(height: 16),
                Text(
                  'Selected Routines:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: game.routines.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(game.routines[index].name),
                      subtitle: Text('Difficulty: ${game.routines[index].difficulty}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RoutineDetailScreen(routine: game.routines[index]),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TrainingRoutinesScreen extends StatelessWidget {
  final Game game;

  TrainingRoutinesScreen({required this.game});

  final List<Routine> allRoutines = [
    Routine(
      name: 'Routine Accuracy',
      description: 'Mission: Make 10 Headshots',
      difficulty: 'Medium',
      progress: 0,
    ),
    Routine(
      name: 'Speed Shooting',
      description: 'Mission: Eliminate 20 enemies in 5 minutes',
      difficulty: 'Hard',
      progress: 0,
    ),
    Routine(
      name: 'Build Battle',
      description: 'Mission: Build and eliminate 10 enemies',
      difficulty: 'Hard',
      progress: 0,
    ),
    Routine(
      name: 'Survival Skills',
      description: 'Mission: Survive for 30 minutes without dying',
      difficulty: 'Medium',
      progress: 0,
    ),
    Routine(
      name: 'Vehicle Combat',
      description: 'Mission: Get 5 vehicle kills',
      difficulty: 'Medium',
      progress: 0,
    ),
    Routine(
      name: 'Sniper Training',
      description: 'Mission: Make 5 long-distance sniper kills',
      difficulty: 'Hard',
      progress: 0,
    ),
    Routine(
      name: 'Ultimate Usage',
      description: 'Mission: Use your ultimate ability 3 times in one match',
      difficulty: 'Medium',
      progress: 0,
    ),
    Routine(
      name: 'Team Player',
      description: 'Mission: Revive 3 teammates',
      difficulty: 'Easy',
      progress: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training Routines'),
      ),
      body: ListView.builder(
        itemCount: allRoutines.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(allRoutines[i].name),
            subtitle: Text('Difficulty: ${allRoutines[i].difficulty}\nProgress: ${allRoutines[i].progress}%'),
            onTap: () {
              // Asignar la rutina seleccionada al juego
              game.routines.add(allRoutines[i]);

              // Navegar de vuelta a la pantalla de detalles del juego
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GameDetailScreen(game: game),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class RoutineDetailScreen extends StatelessWidget {
  final Routine routine;

  const RoutineDetailScreen({required this.routine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routine.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(routine.description),
            Text('Difficulty: ${routine.difficulty}'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => friendList(),
                  ),
                );
              },
              child: const Text('Share Routine'),
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
            Text('User Name: Juanito'), 
            Text('User ID: 123456'), 
            Text('Email: elmarcianito@example.com'), 
            Text('Password: ********'), 
          ],
        ),
      ),
    );
  }
}
