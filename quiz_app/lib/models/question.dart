class Question {
  const Question(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();

    return shuffledList;
  }
}
