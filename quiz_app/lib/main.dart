import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz',
    home: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Colors.deepPurple,
            Colors.deepPurpleAccent,
          ],
        ),
      ),
    ),
  ));
}
