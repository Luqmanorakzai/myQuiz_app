import 'package:flutter/material.dart';

class JavaQuizScreen extends StatefulWidget {
  const JavaQuizScreen({super.key});
  @override
  State<JavaQuizScreen> createState() => _JavaQuizScreenState();
}
List<String> javaQuestions = [
  'What is Java primarily used for?',
  'Which of the following is a valid way to declare a variable in Java?',
  'Which keyword is used to define a class in Java?',
  'What is the file extension for Java files?',
  'How do you define a method in Java?',
  'Which of the following is not a Java keyword?',
  'Which method is the entry point of any Java program?',
  'Which of these is used for memory management in Java?',
  'What is the default value of an int variable in Java?',
  'Which of the following is a correct way to create an object in Java?'
];

List<String> javaOption1 = [
  'Web development', // q1 op1
  'int x = 10;', // q2 op1
  'define', // q3 op1
  '.java', // q4 op1
  'function myMethod(){}', // q5 op1
  'class', // q6 op1
  'start()', // q7 op1
  'Memory allocation', // q8 op1
  'null', // q9 op1
  'MyClass obj;', // q10 op1
];

List<String> javaOption2 = [
  'Mobile apps', // q1 op2
  'var x = 10;', // q2 op2
  'class', // q3 op2
  '.jav', // q4 op2
  'void myMethod(){}', // q5 op2
  'interface', // q6 op2
  'main()', // q7 op2
  'Garbage collection', // q8 op2
  '0', // q9 op2
  'MyClass obj = new MyClass;', // q10 op2
];

List<String> javaOption3 = [
  'Desktop apps', // q1 op3
  'let x = 10;', // q2 op3
  'structure', // q3 op3
  '.javac', // q4 op3
  'myMethod(){}', // q5 op3
  'extends', // q6 op3
  'begin()', // q7 op3
  'Heap storage', // q8 op3
  '1', // q9 op3
  'new MyClass();', // q10 op3
];

List<String> javaOption4 = [
  'All of the above', // q1 op4
  'x = 10;', // q2 op4
  'static', // q3 op4
  '.jv', // q4 op4
  'public void myMethod(){}', // q5 op4
  'null', // q6 op4
  'entry()', // q7 op4
  'Memory recycling', // q8 op4
  '-1', // q9 op4
  'MyClass();', // q10 op4
];

List<String> correctJavaAnsStore = [
  'All of the above', // Answer for Q1
  'int x = 10;', // Answer for Q2
  'class', // Answer for Q3
  '.java', // Answer for Q4
  'public void myMethod(){}', // Answer for Q5
  'null', // Answer for Q6
  'main()', // Answer for Q7
  'Garbage collection', // Answer for Q8
  '0', // Answer for Q9
  'new MyClass();' // Answer for Q10
];


class _JavaQuizScreenState extends State<JavaQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

