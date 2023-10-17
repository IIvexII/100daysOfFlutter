import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function(String) startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.deepPurple.shade100,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: () => startQuiz('question-screen'),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(14),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz!"),
          ),
        ],
      ),
    );
  }
}
