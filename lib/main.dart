import 'package:flutter/material.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/presentation/screens/movie_screen.dart';
void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieScreen(),
    );
  }
}


