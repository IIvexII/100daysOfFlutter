import 'package:flutter/material.dart';
import 'package:role_dice/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(),
    ),
    // Remove the debug banner
    debugShowCheckedModeBanner: false,
  ));
}
