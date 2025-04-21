import 'package:flutter/material.dart';
import 'package:newproject/constants/styles.dart';
import 'package:newproject/data/question_list.dart';
import 'package:newproject/widgets/interactive_questionnaire.dart';
import 'package:newproject/widgets/quiz_buttons.dart';
import '../constants/assets.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  // List of InteractiveQuestionnaire widgets
  List<InteractiveQuestionnaire> questions = [];
  
  // Map to store selected answers for each question
  Map<int, List<String>> selectedAnswers = {};
  
  Map<String, String> answers = {}; // Map to store final answers
  Map<String, bool> answerStatus = {}; // Map to store whether answers are correct

  @override
  void initState() {
    super.initState();

    // Define the list of questions dynamically
    questions = QuestionnaireList.fromIndex(
      currentIndex: currentIndex,
      onAnswersChanged: (index, answers) {
        setState(() {
          selectedAnswers[index] = answers;
        });
      },
    ).questions;

    // Initialize selected answers for each question
    for (int i = 0; i < questions.length; i++) {
      selectedAnswers[i] = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              Assets.assetsImagesQUESTION,
              fit: BoxFit.cover,
            ),
          ),
          // Questionnaire Content
          Column(
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
                          width: 10,
                          height: 10,
                          child: CircularProgressIndicator(
                            value: currentIndex / questions.length,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.primary),
                            strokeWidth: 2,
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                        Text(
                          'Question ${currentIndex + 1} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  children: questions,
                ),
              ),
              // Buttons
              QuizButtons(
                controller: _controller,
                currentIndex: currentIndex,
                totalQuestions: questions.length,
                answers: answers,
                answerStatus: answerStatus,
                questions: questions,
                selectedAnswers: selectedAnswers,
                onAnswersChanged: (index, answers) {
                  setState(() {
                    selectedAnswers[index] = answers;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
