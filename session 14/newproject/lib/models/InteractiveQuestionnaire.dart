import 'package:flutter/material.dart';
import 'package:newproject/constants/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/models/AnswerItem.dart';

class InteractiveQuestionnaire extends StatefulWidget {
  final String question;
  final List<String> answers;
  final TextStyle questionStyle;
  final TextStyle answerStyle;
  final String questionimage;
  final String quistionnumber;
  final bool ismultibulechooise;

  const InteractiveQuestionnaire({
    Key? key,
    required this.question,
    required this.answers,
    this.questionStyle =
        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    this.answerStyle = AppTextStyles.h2,
    required this.questionimage,
    required this.quistionnumber,
    required this.ismultibulechooise,
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
        Padding(
          padding: const EdgeInsets.only(top: 70, left: 10, bottom: 25),
          child: Container(
            width: 130,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.secondary,
            ),
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(widget.questionimage)),
                    Text(
                      widget.quistionnumber,
                      style: AppTextStyles.h2,
                    ),
                  ]),
            ),
          ),
        ),
        // Question text
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 275,
            child: Text(
              widget.question,
              style: AppTextStyles.h1,
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Answer options
        Expanded(
          child: ListView.builder(
            itemCount: widget.answers.length,
            itemBuilder: (context, index) {
              String answer = widget.answers[index];
              bool isSelected = selectedAnswers.contains(answer);
              return AnswerItem(
                answer: answer,
                isSelected: isSelected,
                isMultichoice: widget.ismultibulechooise,
                onTap: () {
                  if (widget.ismultibulechooise) {
                    selectedAnswers.contains(answer)
                        ? selectedAnswers.remove(answer)
                        : selectedAnswers.add(answer);
                  } else {
                    selectedAnswers.clear();
                    selectedAnswers.add(answer);
                  }
                  setState(() {});
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
