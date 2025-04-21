import 'package:flutter/material.dart';
import 'package:newproject/widgets/interactive_questionnaire.dart';
import 'package:newproject/utils/quiz_utils.dart';

class QuizButtons extends StatefulWidget {
  final PageController controller;
  final int currentIndex;
  final int totalQuestions;
  final Map<String, String> answers;
  final Map<String, bool> answerStatus;
  final List<InteractiveQuestionnaire> questions;
  final Map<int, List<String>> selectedAnswers;
  final Function(int, List<String>) onAnswersChanged;

  const QuizButtons({
    Key? key,
    required this.controller,
    required this.currentIndex,
    required this.totalQuestions,
    required this.answers,
    required this.answerStatus,
    required this.questions,
    required this.selectedAnswers,
    required this.onAnswersChanged,
  }) : super(key: key);

  @override
  State<QuizButtons> createState() => _QuizButtonsState();
}

class _QuizButtonsState extends State<QuizButtons> {
  void _handleNext() {
    QuizUtils.handleNext(
      context: context,
      controller: widget.controller,
      currentIndex: widget.currentIndex,
      totalQuestions: widget.totalQuestions,
      answers: widget.answers,
      answerStatus: widget.answerStatus,
      questions: widget.questions,
      selectedAnswers: widget.selectedAnswers,
      onAnswersChanged: widget.onAnswersChanged,
    );
  }

  void _handleBack() {
    QuizUtils.handleBack(
      context: context,
      controller: widget.controller,
      currentIndex: widget.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back Button
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: ElevatedButton(
              onPressed: _handleBack,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(0, 142, 132, 255),
                side: BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Next Button
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: ElevatedButton(
              onPressed: _handleNext,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8E84FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    widget.currentIndex == widget.totalQuestions - 1
                        ? "Finish"
                        : "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
