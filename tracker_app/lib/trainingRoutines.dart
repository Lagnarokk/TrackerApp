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
        name: 'Grenade Mastery',
        description: 'Mission: Make 5 kills with grenades',
        difficulty: 'Medium',
        progress: 0,
      ),
      Routine(
        name: 'Sniper Practice',
        description: 'Mission: Make 15 long-range kills',
        difficulty: 'Hard',
        progress: 0,
      ),
      Routine(
        name: 'Stealth Mode',
        description: 'Mission: Complete 3 missions without being detected',
        difficulty: 'Hard',
        progress: 0,
      ),
      Routine(
        name: 'Quick Reflexes',
        description: 'Mission: Achieve 10 kills in under 2 seconds each',
        difficulty: 'Medium',
        progress: 0,
      ),
      Routine(
        name: 'Team Coordination',
        description: 'Mission: Win 5 team matches',
        difficulty: 'Easy',
        progress: 0,
      ),
      Routine(
        name: 'Objective Control',
        description: 'Mission: Capture 3 objectives',
        difficulty: 'Easy',
        progress: 0,
      ),
      Routine(
        name: 'Weapon Mastery',
        description: 'Mission: Make 30 kills using 5 different weapons',
        difficulty: 'Hard',
        progress: 0,
      ),
      Routine(
        name: 'Movement Skills',
        description: 'Mission: Perform 20 jumps and 10 slides while shooting',
        difficulty: 'Medium',
        progress: 0,
      ),
      Routine(
        name: 'Close Combat',
        description: 'Mission: Achieve 10 melee kills',
        difficulty: 'Medium',
        progress: 0,
      ),
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
            Text('Difficulty: ${routine.difficulty}'),
            Text('Progress: ${routine.progress}%'),
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
