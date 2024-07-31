
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:quize_app/models/question.dart';
import 'package:quize_app/screens/dart_result.dart';
import 'package:quize_app/screens/react_quiz_screen.dart';
import 'package:quize_app/widget/costum_app_bar.dart';

import 'package:flutter/material.dart';

class DartQuizScreen extends StatefulWidget {
  const DartQuizScreen({super.key});

  @override
  State<DartQuizScreen> createState() => _DartQuizScreenState();
}

List<String> dartQuestions = [
  'What is Dart primarily used for?',
  'Which of the following is the correct way to declare a variable in Dart?',
  'Which keyword is used to create a constant variable in Dart?',
  'What is the file extension for Dart files?',
  'How do you define a function in Dart?'
];

List<String> dartOption1 = [
  'System programming',//q1 op1
  'var x = 10;',//q2 op1
  'final',//q3 op1
  '.dart',//q4 op1
  'func(){}',// q5 op1
];

List<String> dartOption2 = [
  'Web and mobile app',
  'int x = 10;',
  'const',
  '.dt',
  'def Ftn(){}',
];

List<String> dartOption3 = [
  'Game development',
  'double x = 10.0;',
  'static',
  '.drt',
  'void Ftn(){}',
];

List<String> dartOption4 = [
  'Operating system ',
  'All of the above',
  'immutable',
  '.dartlang',
  'ftn Ftn(){}',
];

List<String> correctAnsSotre = [
  'Web and mobile app',
  'All of the above',
  'const',
  '.dart',
  'void Ftn(){}'
];


class _DartQuizScreenState extends State<DartQuizScreen> {
  // intialize List of string according the length of dartQuestion and if the ques come more growable will increase
  List<String> storeTapedData = List<String>.filled(dartQuestions.length, '', growable: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: dartQuestions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text('Q ${index + 1} : ${dartQuestions[index]}'),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Text('Select your Option'),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            storeTapedData[index] = dartOption1[index];
                                          });
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              color: storeTapedData[index] == dartOption1[index]
                                                  ? Colors.green.withOpacity(0.5)
                                                  : Colors.white,
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              'A) ${dartOption1[index]}',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            storeTapedData[index] = dartOption2[index];
                                          });
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              color: storeTapedData[index] == dartOption2[index]
                                                  ? Colors.green.withOpacity(0.5)
                                                  : Colors.white,
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              'B) ${dartOption2[index]}',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            storeTapedData[index] = dartOption3[index];
                                          });
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              color: storeTapedData[index] == dartOption3[index]
                                                  ? Colors.green.withOpacity(0.5)
                                                  : Colors.white,
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              'C) ${dartOption3[index]}',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            storeTapedData[index] = dartOption4[index];
                                          });
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              color: storeTapedData[index] == dartOption4[index]
                                                  ? Colors.green.withOpacity(0.5)
                                                  : Colors.white,
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              'D) ${dartOption4[index]}',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int score = 0;
                    for (int i = 0; i < correctAnsSotre.length; i++) {
                      if (storeTapedData[i] == correctAnsSotre[i]) {
                        score++;
                      }
                    }
                    double percentage = (score / correctAnsSotre.length) * 100;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DartResult(showPercentage: percentage,);
                        } ,
                      ),
                    );
                    setState(() {
                      storeTapedData = List<String>.filled(dartQuestions.length, '', growable: true);
                    });
                  },
                  child: const Text('Submit your Quiz'),

                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    storeTapedData = List<String>.filled(dartQuestions.length, ' ', growable: false);
                  });

                }, child: const Text('Clear the Quiz'))

              ],
            ),
          ],
        ),
      ),
    );
  }
}
