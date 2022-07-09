// ignore_for_file: file_names

import 'QuestionClass.dart';

class Quiz {
  List<Question> questions = [
    McqQuestion(
      question: "What is 2+2?",
      options: ["4", "5", "6", "7"],
      answer: "A",
    ),
    SubjectiveQuestion(question: "What is 7*5?", answer: "35"),
    SubjectiveQuestion(question: "What is 40% of 50?", answer: "20"),
    McqQuestion(
      question: "What is 20% of 40?",
      options: ["5", "6", "7", "8"],
      answer: "D",
    ),
  ];
  void registerAttempt(String optionId) {
    if (attemptedQuestions < questions.length) {
      if (questions[index].isCorrect(optionId)) {
        currentScore++;
      }
      attemptedQuestions++;
    }
    if (index < questions.length - 1) {
      index++;
    }
  }

  int currentScore = 0;
  int attemptedQuestions = 0;
  int index = 0;
}
