import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("X of Y are correct!"),
        const Text("Questions with answers are here."),
        TextButton(onPressed: () {}, child: const Text("Restart Quiz")),
      ],
    );
  }
}
