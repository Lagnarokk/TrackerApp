import 'package:flutter/material.dart';
import 'Data/Routine.dart';

class routineHistoryScreen extends StatelessWidget {
  final Routine routine;

  routineHistoryScreen({required this.routine});

  // Simula un historial de interacción del usuario
  final List<String> interactionHistory = [
    '2024-07-15: Realizó el registro de avance.',
    '2024-07-14: Visualizó el detalle de la rutina.',
    '2024-07-12: Seleccionó esta rutina por primera vez.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Interacción'),
      ),
      body: ListView.builder(
        itemCount: interactionHistory.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(interactionHistory[index]),
          );
        },
      ),
    );
  }
}