import 'package:flutter/material.dart';
//import 'main.dart';
import 'Data/Routine.dart';
import 'friendList.dart';

class trainingRoutines extends StatelessWidget {
  const trainingRoutines({super.key});

   @override
  Widget build(BuildContext context) {
    List<Routine> routines = [
      Routine(
        name: 'Routine Accuracy',
        description: 'Mission: Make 10 Headshots',
      ),
      // Add more routines here
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Training Routines'),
      ),
      body: ListView.builder(
        itemCount: routines.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(routines[i].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoutineDetailScreen(routine: routines[i]),
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
            Text('${routine.description}'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => friendList(), // go to friend list 
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