import 'package:newproject/constants/assets.dart';
import 'package:newproject/models/questionnaire.dart';
import 'package:newproject/widgets/interactive_questionnaire.dart';

class QuestionnaireList {
  final List<InteractiveQuestionnaire> questions;
  final Function(int, List<String>)? onAnswersChanged;

  const QuestionnaireList._({required this.questions, this.onAnswersChanged});

  factory QuestionnaireList.fromIndex({
    required int currentIndex,
    required Function(int, List<String>) onAnswersChanged,
  }) {
    final questionData = [
      Questionnaire(
        question: 'What is Flutter?',
        answers: [
          'A mobile development framework',
          'A database management system',
          'A programming language',
          'A web browser'
        ],
        questionImage: Assets.assetsImagesQ1,
        isMultipleChoice: false,
        correctAnswer: 'A mobile development framework',
        index: 0,
      ),
      Questionnaire(
        question: 'What vitamins do you take?',
        answers: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
        questionImage: Assets.assetsImagesQ2,
        isMultipleChoice: true,
        correctAnswer: 'Vitamin D3,Zinc',
        index: 1,
      ),
      Questionnaire(
        question: 'How often do you exercise?',
        answers: [
          'Every day',
          '3-4 times a week',
          '1-2 times a week',
          'Rarely'
        ],
        questionImage: Assets.assetsImagesQ3,
        isMultipleChoice: false,
        correctAnswer: '3-4 times a week',
        index: 2,
      ),
      Questionnaire(
        question: 'What are your fitness goals?',
        answers: [
          'Weight loss',
          'Muscle gain',
          'Improved endurance',
          'Better flexibility'
        ],
        questionImage: Assets.assetsImagesQ4,
        isMultipleChoice: true,
        correctAnswer: 'Weight loss,Improved endurance',
        index: 3,
      ),
      Questionnaire(
        question: 'Do you have any dietary restrictions?',
        answers: [
          'Vegetarian',
          'Vegan',
          'Gluten-free',
          'None'
        ],
        questionImage: Assets.assetsImagesQUESTION,
        isMultipleChoice: false,
        correctAnswer: 'None',
        index: 4,
      ),
      Questionnaire(
        question: "What is your age?",
        answers: [
          "18-24",
          "25-34",
          "35-44",
          "45-54",
          "55-64",
          "65 or older"
        ],
        questionImage: Assets.assetsImagesQ3,
        index: 5,
        isMultipleChoice: false,
        correctAnswer: "25-34",
      ),
      Questionnaire(
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
        questionImage: Assets.assetsImagesQ4,
        index: 6,
        isMultipleChoice: true,
        correctAnswer: "English, Arabic",
      ),
      Questionnaire(
        question: "How often do you exercise per week?",
        answers: [
          "Never",
          "1-2 times",
          "3-4 times",
          "5-6 times",
          "Every day"
        ],
        questionImage: Assets.assetsImagesQ1,
        index: 7,
        isMultipleChoice: false,
        correctAnswer: "3-4 times",
      ),
      Questionnaire(
        question: "Which of these healthy habits do you practice?",
        answers: [
          "Regular exercise",
          "Meditation",
          "Reading",
          "Healthy eating",
          "Adequate sleep",
          "Journaling",
          "Socializing"
        ],
        questionImage: Assets.assetsImagesQ2,
        index: 8,
        isMultipleChoice: true,
        correctAnswer: "Regular exercise, Healthy eating, Adequate sleep",
      ),
      Questionnaire(
        question: "What is your preferred way to learn new things?",
        answers: [
          "Reading books",
          "Watching videos",
          "Taking courses",
          "Hands-on practice",
          "Group discussions",
          "One-on-one mentoring"
        ],
        questionImage: Assets.assetsImagesQ3,
        index: 9,
        isMultipleChoice: false,
        correctAnswer: "Hands-on practice",
      ),
      Questionnaire(
        question: "Which of these skills would you like to improve?",
        answers: [
          "Communication",
          "Time management",
          "Problem-solving",
          "Leadership",
          "Technical skills",
          "Creativity",
          "Emotional intelligence"
        ],
        questionImage: Assets.assetsImagesQ4,
        index: 10,
        isMultipleChoice: true,
        correctAnswer: "Communication, Time management, Problem-solving",
      ),
      Questionnaire(
        question: "How do you prefer to spend your free time?",
        answers: [
          "Reading",
          "Watching movies/TV",
          "Exercising",
          "Socializing",
          "Learning new skills",
          "Traveling",
          "Relaxing"
        ],
        questionImage: Assets.assetsImagesQ1,
        index: 11,
        isMultipleChoice: false,
        correctAnswer: "Learning new skills",
      ),
      Questionnaire(
        question: "Which of these technologies interest you?",
        answers: [
          "Artificial Intelligence",
          "Blockchain",
          "Virtual Reality",
          "Internet of Things",
          "Cloud Computing",
          "Cybersecurity",
          "Mobile Development"
        ],
        questionImage: Assets.assetsImagesQ2,
        index: 12,
        isMultipleChoice: true,
        correctAnswer:
            "Artificial Intelligence, Cloud Computing, Mobile Development",
      ),
    ];

    return QuestionnaireList._(
      questions: questionData.map((q) => InteractiveQuestionnaire(
            questionnaire: q,
            currentIndex: currentIndex,
            onAnswersChanged: onAnswersChanged,
          )).toList(),
      onAnswersChanged: onAnswersChanged,
    );
  }
}
