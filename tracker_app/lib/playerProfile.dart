import 'package:flutter/material.dart';
import 'main.dart';

class playerProfile extends StatelessWidget {
  const playerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Player Profile',
      theme: ThemeData(
        //fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detalle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'List of Games',
                style: TextStyle(fontSize: 24),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
                child: const Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
