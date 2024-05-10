import 'package:flutter/material.dart';
import 'main.dart';

class playerProfile extends StatelessWidget {
  const playerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy user data (replace with actual user data)
    String userName = 'Juanito';
    String email = 'marcianito@example.com';

    return MaterialApp(
      // title: 'Player Profile',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
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
                  Text(
                    'User Name: $userName',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Email: $email',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
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

