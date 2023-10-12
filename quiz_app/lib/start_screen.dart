import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.deepPurple.shade100,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(18),
            ),
            child: const Text("Start Quiz!"),
          ),
        ],
      ),
    );
  }
}
