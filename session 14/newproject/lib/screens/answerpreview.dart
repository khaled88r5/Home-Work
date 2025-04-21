import 'package:flutter/material.dart';
import 'package:newproject/constants/assets.dart';
import 'package:newproject/constants/styles.dart';
import 'package:newproject/widgets/interactive_questionnaire.dart';
import 'package:newproject/utils/quiz_utils.dart';

class AnswerPreview extends StatefulWidget {
  final Map<String, String> answers; // Stores user's answers
  final Map<String, bool> answerStatus; // Stores if each answer is correct
  final List<InteractiveQuestionnaire> questions; // List of all questions

  const AnswerPreview({
    Key? key,
    required this.answers,
    required this.answerStatus,
    required this.questions,
  }) : super(key: key);

  @override
  _AnswerPreviewState createState() => _AnswerPreviewState();
}

class _AnswerPreviewState extends State<AnswerPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Quiz Results', style: AppTextStyles.h1),
      ),
      body: Stack(children: [
        // Background Image
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            Assets.assetsImagesQUESTION,
            fit: BoxFit.cover,
          ),
        ),
        // List of answers
        ListView.builder(
          itemCount: widget.answers.length,
          itemBuilder: (context, index) {
            // Get question and user's answer
            final question = widget.answers.keys.elementAt(index);
            final userAnswer = widget.answers.values.elementAt(index);

            // Check if answer is correct
            final isCorrect = widget.answerStatus[question] ?? false;

            // Get correct answer from questions list
            final correctAnswer =
                QuizUtils.getCorrectAnswer(question, widget.questions);

            return Card(
              // Green background for correct, red for incorrect
              color: isCorrect
                  ? Colors.green.withOpacity(0.2)
                  : Colors.red.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question text
                    Text(
                      question,
                      style: AppTextStyles.h2,
                    ),
                    const SizedBox(height: 8),

                    // User's answer
                    Text(
                      'Your answer: $userAnswer',
                      style: AppTextStyles.h3,
                    ),
                    const SizedBox(height: 4),

                    // Correct answer
                    Text(
                      'Correct answer: $correctAnswer',
                      style: AppTextStyles.h3.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Correct/Incorrect indicator
                    Row(
                      children: [
                        Icon(
                          isCorrect ? Icons.check_circle : Icons.error,
                          color: isCorrect ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          isCorrect ? 'Correct!' : 'Incorrect',
                          style: TextStyle(
                            color: isCorrect ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
