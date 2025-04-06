import 'package:flutter/material.dart';
import 'package:newproject/models/Qlist.dart';
import 'package:newproject/models/InteractiveQuestionnaire.dart'; // Ensure this file contains the InteractiveQuestionnaire widget
import 'answerpreview.dart';
import '../constants/assets.dart';

class quizscreen extends StatefulWidget {
  @override
  _quizscreenState createState() => _quizscreenState();
}

class _quizscreenState extends State<quizscreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  // List to store the keys for each question
  List<GlobalKey<InteractiveQuestionnaireState>> questionKeys = [];

  // List of InteractiveQuestionnaire widgets
  List<InteractiveQuestionnaire> questions = [];

  Map<String, String> answers = {}; // Map to store answers

  @override
  void initState() {
    super.initState();

    // Define the list of questions dynamically
    questions = QuestionnaireList().questions;

    // Initialize the keys for each question
    for (int i = 0; i < questions.length; i++) {
      questionKeys.add(questions[i].key as GlobalKey<
          InteractiveQuestionnaireState>); // Adding the key of each widget
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
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back Button
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _controller.previousPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(0, 142, 132, 255),
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
                          onPressed: () {
                            // Get the current question and save its answer dynamically
                            answers[questions[currentIndex].question] =
                                '(${questionKeys[currentIndex].currentState?.selectedAnswers.join(', ')})';
                            if (currentIndex < questions.length - 1) {
                              _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnswerPreview(
                                          answers: answers,
                                        )),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF8E84FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Next",
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
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
