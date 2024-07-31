import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:quize_app/screens/java_score_result_screen.dart';
import 'package:quize_app/screens/starting_screen.dart';
import 'package:quize_app/widget/costum_app_bar.dart';

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

List<String> javaTapedOptions =
    List<String>.filled(javaQuestions.length, '', growable: false);

class _JavaQuizScreenState extends State<JavaQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostumAppBar(
        appBarTitleText: 'Java Quiz',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: javaQuestions.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 225,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.50),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text(
                                      textAlign: TextAlign.center,
                                      'Q:${index + 1} ${javaQuestions[index]}'),
                                ),
                              ),
                            ),
                            Gap(5),
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.50),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            javaTapedOptions[index] =
                                                javaOption1[index];
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: javaTapedOptions[index] ==
                                                      javaOption1[index]
                                                  ? Colors.purple.withOpacity(0.50)
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                              child:
                                                  Text(
                                                    textAlign: TextAlign.center,
                                                    'A) ${javaOption1[index]}',
                                                  style: TextStyle(fontSize: 12),
                                                  )),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            javaTapedOptions[index] =
                                            javaOption2[index];
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: javaTapedOptions[index] ==
                                                  javaOption2[index]
                                                  ? Colors.purple.withOpacity(0.50)
                                                  : Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Center(
                                              child:
                                              Text(
                                                textAlign: TextAlign.center,
                                                'B) ${javaOption2[index]}',
                                                style: TextStyle(fontSize: 12),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            javaTapedOptions[index] =
                                            javaOption3[index];
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: javaTapedOptions[index] ==
                                                  javaOption3[index]
                                                  ? Colors.purple.withOpacity(0.50)
                                                  : Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Center(
                                              child:
                                              Text(
                                                textAlign: TextAlign.center,
                                                'C) ${javaOption3[index]}',
                                                style: TextStyle(fontSize: 12),
                                              )),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            javaTapedOptions[index] =
                                            javaOption4[index];
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: javaTapedOptions[index] ==
                                                  javaOption4[index]
                                                  ? Colors.purple.withOpacity(0.50)
                                                  : Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Center(
                                              child:
                                              Text(
                                                textAlign: TextAlign.center,
                                                'D) ${javaOption4[index]}',
                                                style: TextStyle(fontSize: 12),
                                              )),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ));
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  int score = 0;
                  for(int i= 0; i<javaTapedOptions.length; i++)
                    {
                      if(javaTapedOptions[i]==correctJavaAnsStore[i])
                        {
                          score++;
                        }
                    }
                  double javaPercentage = (score / correctJavaAnsStore.length)*100;
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return JavaResultSctrreen(javaPercentages: javaPercentage);
                 }));

                setState(() {
                  javaTapedOptions = List.filled(javaQuestions.length,'',growable: true);
                });

                }, child:Text('submit') ),


                ElevatedButton(onPressed: (){
                    setState(() {
                      javaTapedOptions = List.filled(javaQuestions.length,'',growable: true );
                    });

                }, child:Text('Clear') ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
