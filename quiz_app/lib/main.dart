import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 67, 18, 36),
                Color.fromARGB(255, 79, 12, 77),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
