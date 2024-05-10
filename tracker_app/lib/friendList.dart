import 'package:flutter/material.dart';
import 'main.dart';

class friendList extends StatelessWidget {
  const friendList({super.key});

  @override
  Widget build(BuildContext context) {
    //list of friends 
    List<String> friends = ['Friend 1', 'Friend 2', 'Friend 3', 'Friend 4', 'Friend 5'];

    return MaterialApp(
      //title: 'Friend List',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Friend List'),
        ),
        body: ListView.builder(
          itemCount: friends.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(friends[index]),
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
