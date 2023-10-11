import 'package:flutter/material.dart';
import 'package:role_dice/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: <Color>[
          Color.fromARGB(255, 84, 6, 6),
          Color.fromARGB(255, 144, 24, 40),
        ],
      ),
    ),
    // Remove the debug banner
    debugShowCheckedModeBanner: false,
  ));
}
