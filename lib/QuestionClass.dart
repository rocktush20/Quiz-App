// ignore_for_file: file_names

class Question {
  List<String>? options;
  String type;
  String question;
  String answer;
  Question({
    required this.question,
    required this.answer,
    required this.type,
    this.options,
  });
  bool isCorrect(String chosenAnswer) {
    if (chosenAnswer == answer) {
      return true;
    } else {
      return false;
    }
  }
}

class SubjectiveQuestion extends Question {
  SubjectiveQuestion(
      {required super.question,
      required super.answer,
      super.type = "Subjective"});
}

class McqQuestion extends Question {
  McqQuestion(
      {required super.question,
      required super.answer,
      super.type = "MCQ",
      required super.options});
}