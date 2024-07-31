// question.dart

class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;
  int? selectedOptionIndex; // Track selected answer

  Question({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
    this.selectedOptionIndex,
  });
}
