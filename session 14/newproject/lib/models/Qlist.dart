import 'package:flutter/material.dart';
import 'package:newproject/constants/assets.dart';
import 'package:newproject/models/InteractiveQuestionnaire.dart';

class QuestionnaireList {
  List<InteractiveQuestionnaire> questions;

  QuestionnaireList()
      : questions = [
          InteractiveQuestionnaire(
            key: GlobalKey<InteractiveQuestionnaireState>(),
            question:
                "How would you describe your level of satisfaction with the healthcare system?",
            answers: [
              "Strongly satisfied",
              "Satisfied",
              "Neutral",
              "Not satisfied"
            ],
            questionimage: Assets.assetsImagesQ1,
            quistionnumber: 'Question 1',
            ismultibulechooise: false,
          ),
          InteractiveQuestionnaire(
            key: GlobalKey<InteractiveQuestionnaireState>(),
            question: "What vitamins do you take?",
            answers: ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
            questionimage: Assets.assetsImagesQ2,
            quistionnumber: 'Question 2',
            ismultibulechooise: true,
          ),
          InteractiveQuestionnaire(
            key: GlobalKey<InteractiveQuestionnaireState>(),
            question: "What is your age?",
            answers: [
              "18-24",
              "25-34",
              "35-44",
              "45-54",
              "55-64",
              "65 or older"
            ],
            questionimage: Assets.assetsImagesQ3,
            quistionnumber: 'Question3',
            ismultibulechooise: false,
          ),
          InteractiveQuestionnaire(
            key: GlobalKey<InteractiveQuestionnaireState>(),
            question: "What languages do you speak?",
            answers: [
              "English",
              "Spanish",
              "Arabic",
              "French",
              "German",
              "Italian",
              "Portuguese",
              "Russian",
              "Chinese",
              "Japanese",
              "Other"
            ],
            questionimage: Assets.assetsImagesQ4,
            quistionnumber: 'Question 4',
            ismultibulechooise: true,
          ),
          // Add more questions dynamically if needed
        ];
}
