import 'package:flutter/material.dart';
import 'main.dart';

class listOfGames extends StatelessWidget {
  const listOfGames({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy list of games (replace this with your actual list of games)
    List<String> games = ['Game 1', 'Game 2', 'Game 3', 'Game 4', 'Game 5'];

    return MaterialApp(
      //title: 'List Of Games',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Of Games'),
        ),
        body: ListView.builder(
          itemCount: games.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(games[index]),
              onTap: () {
                //funcionalidad
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainMenuScreen()),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
