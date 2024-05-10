import 'package:flutter/material.dart';
import 'main.dart';

class trainingRoutineDetail extends StatelessWidget {
  const trainingRoutineDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy list of training routines (replace this with your actual list of routines)
    List<String> routines = ['Routine 1', 'Routine 2', 'Routine 3', 'Routine 4', 'Routine 5'];

    return MaterialApp(
      //title: 'Training Routine Detail',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Training Routine Detail'),
        ),
        body: ListView.builder(
          itemCount: routines.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(routines[index]),
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

