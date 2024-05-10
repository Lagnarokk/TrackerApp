import 'package:flutter/material.dart';
//import 'main.dart';
import 'Data/Routine.dart';

class trainingRoutines extends StatelessWidget {
  const trainingRoutines({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Routine> routines = [
      Routine(
        name: 'Routine 1',
        description: 'Description of Routine 1',
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
                  builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text(routines[i].name),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${routines[i].description}'),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

