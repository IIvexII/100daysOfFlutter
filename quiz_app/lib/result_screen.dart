import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummeryData() {
    List<Map<String, Object>> summery = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summery.add(
        {
          'question-id': i,
          'question': questions[i].question,
          'correct-answer': questions[0].answers[0],
          'chosen-answer': chosenAnswers[i],
        },
      );
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summery = getSummeryData();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(summery[0]['question']),
          const Text("Questions with answers are here."),
          TextButton(onPressed: () {}, child: const Text("Restart Quiz")),
        ],
      ),
    );
  }
}
