import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery(this.summery, {super.key});

  final List<Map<String, Object>> summery;

  @override
  Widget build(BuildContext context) {
    const answerColor = {
      "correct": Color.fromARGB(255, 185, 255, 189),
      "wrong": Color.fromARGB(255, 250, 189, 189)
    };

    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: summery.map(
            (data) {
              bool isCorrect = data['chosen-answer'] == data['correct-answer'];

              return Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      color: answerColor[isCorrect ? 'correct' : 'wrong'],
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Text(
                      ((data['question-id'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 25),
                            child: Text(
                              data['question'] as String,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              data['correct-answer'] as String,
                              style: TextStyle(
                                color: answerColor['correct'],
                              ),
                            ),
                          ),
                          Text(
                            data['chosen-answer'] as String,
                            style: TextStyle(
                              color:
                                  answerColor[isCorrect ? 'correct' : 'wrong'],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
