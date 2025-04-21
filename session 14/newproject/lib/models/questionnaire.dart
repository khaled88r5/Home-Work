class Questionnaire {
  final String question;
  final List<String> answers;
  final String questionImage;
  final bool isMultipleChoice;
  final String correctAnswer;
  final int index;

  const Questionnaire({
    required this.question,
    required this.answers,
    required this.questionImage,
    required this.isMultipleChoice,
    required this.correctAnswer,
    required this.index,
  });
}
