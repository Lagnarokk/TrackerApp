import 'Routine.dart';

class Game {
  final String name;
  final String description;
  final String urlAccess;
  final String urlImage;
  final bool isMultiplayer;
  final int year;
  final String genre;
  final double rating;
  List<Routine> routines = [];

  Game({
    required this.name,
    required this.description,
    required this.urlAccess,
    required this.urlImage,
    required this.isMultiplayer,
    required this.year,
    required this.genre,
    required this.rating,
  });
}

