import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';

import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  List<String> answersList = [];

  void chooseAnswer(String answer) {
    answersList.add(answer);

    if (answersList.length == questions.length) {
      setState(() {
        answersList = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void setScreen() {
    setState(() => activeScreen = 'question-screen');
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(setScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: answersList);
    }

    return MaterialApp(
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
          child: screenWidget,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
