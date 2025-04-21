import 'package:flutter/material.dart';
import 'package:newproject/constants/styles.dart';
import 'package:newproject/models/questionnaire.dart';
import 'package:newproject/widgets/answer_item.dart';

class InteractiveQuestionnaire extends StatefulWidget {
  final Questionnaire questionnaire;
  final TextStyle questionStyle;
  final TextStyle answerStyle;
  final Function(int, List<String>)? onAnswersChanged;
  final int currentIndex;

  const InteractiveQuestionnaire({
    required this.questionnaire,
    required this.currentIndex,
    required this.onAnswersChanged,
    this.questionStyle =
        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    this.answerStyle = AppTextStyles.h2,
    Key? key,
  }) : super(key: key);

  @override
  InteractiveQuestionnaireState createState() =>
      InteractiveQuestionnaireState();
}

class InteractiveQuestionnaireState extends State<InteractiveQuestionnaire> {
  List<String> selectedAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 275,
            child: Text(
              widget.questionnaire.question,
              style: AppTextStyles.h1,
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Answer options
        Expanded(
          child: ListView.builder(
            itemCount: widget.questionnaire.answers.length,
            itemBuilder: (context, index) {
              String answer = widget.questionnaire.answers[index];
              bool isSelected = selectedAnswers.contains(answer);
              return AnswerItem(
                answer: answer,
                isSelected: isSelected,
                isMultichoice: widget.questionnaire.isMultipleChoice,
                onTap: () {
                  setState(() {
                    if (widget.questionnaire.isMultipleChoice) {
                      selectedAnswers.contains(answer)
                          ? selectedAnswers.remove(answer)
                          : selectedAnswers.add(answer);
                    } else {
                      selectedAnswers.clear();
                      selectedAnswers.add(answer);
                    }
                    widget.onAnswersChanged?.call(widget.questionnaire.index, selectedAnswers);
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
