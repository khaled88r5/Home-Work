import 'package:flutter/material.dart';
import 'package:newproject/widgets/interactive_questionnaire.dart';
import 'package:newproject/screens/answerpreview.dart';

class QuizUtils {
  static String getCorrectAnswer(
      String question, List<InteractiveQuestionnaire> questions) {
    final questionItem = questions.firstWhere(
      (q) => q.questionnaire.question == question,
      orElse: () => throw Exception('Question not found'),
    );
    return questionItem.questionnaire.correctAnswer;
  }

  static bool isAnswerCorrect(
    List<String> selectedAnswers,
    String correctAnswer,
    bool isMultipleChoice,
  ) {
    if (isMultipleChoice) {
      final correctAnswers = correctAnswer.split(', ');
      return selectedAnswers.length == correctAnswers.length &&
          selectedAnswers.every((answer) => correctAnswers.contains(answer));
    } else {
      return selectedAnswers.length == 1 && selectedAnswers[0] == correctAnswer;
    }
  }

  static void handleNext({
    required BuildContext context,
    required PageController controller,
    required int currentIndex,
    required int totalQuestions,
    required Map<String, String> answers,
    required Map<String, bool> answerStatus,
    required List<InteractiveQuestionnaire> questions,
    required Map<int, List<String>> selectedAnswers,
    required Function(int, List<String>) onAnswersChanged,
  }) {
    // Don't proceed if no answer is selected
    if (selectedAnswers[currentIndex]?.isEmpty ?? true) {
      return;
    }

    // Get current question and answers
    final question = questions[currentIndex].questionnaire.question;
    final currentAnswers = selectedAnswers[currentIndex] ?? [];
    final correctAnswer = questions[currentIndex].questionnaire.correctAnswer;
    final isMultipleChoice =
        questions[currentIndex].questionnaire.isMultipleChoice;

    // Save the selected answer
    answers[question] = currentAnswers.join(', ');

    // Save if the answer is correct
    answerStatus[question] = isAnswerCorrect(
      currentAnswers,
      correctAnswer,
      isMultipleChoice,
    );

    // Move to next question or show results
    if (currentIndex < totalQuestions - 1) {
      controller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnswerPreview(
            answers: answers,
            answerStatus: answerStatus,
            questions: questions,
          ),
        ),
      );
    }
  }

  static void handleBack({
    required BuildContext context,
    required PageController controller,
    required int currentIndex,
  }) {
    if (currentIndex == 0) {
      Navigator.pop(context);
    } else {
      controller.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }
}
