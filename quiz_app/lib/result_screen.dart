import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.setScreen,
  });

  final List<String> chosenAnswers;
  final void Function(String) setScreen;

  List<Map<String, Object>> getSummeryData() {
    List<Map<String, Object>> summery = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summery.add(
        {
          'question-id': i,
          'question': questions[i].question,
          'correct-answer': questions[i].answers[0],
          'chosen-answer': chosenAnswers[i],
        },
      );
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summery = getSummeryData();
    final numberOfQuestions = questions.length;
    final numberofCorrectAns = summery
        .where(
          (data) => data['correct-answer'] == data['chosen-answer'],
        )
        .length;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "You answered $numberofCorrectAns out of $numberOfQuestions questions correctly!",
              style: TextStyle(
                color: Colors.deepPurple.shade100,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummery(summery),
            const SizedBox(height: 50),
            TextButton.icon(
              onPressed: () => setScreen('start-screen'),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              icon: const Icon(
                Icons.restart_alt,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
