import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/screens/c++_quiz_screen.dart';
import 'package:quize_app/screens/dart_quiz_screen.dart';
import 'package:quize_app/screens/java_quiz_screen.dart';
import 'package:quize_app/screens/react_quiz_screen.dart';
import 'package:quize_app/widget/costum_app_bar.dart';
import '../widget/custom_ dashboard.dart';
class QzDishboardScreen extends StatelessWidget {
  const QzDishboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return  Scaffold(
        appBar: CostumAppBar(appBarTitleText: 'Choose Your Subject'),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  children: [
                    CustomDashBoard(
                      langName: 'Dart',
                      imagePath: 'assets/images/dart3.jpeg',
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DartQuizScreen();
                        }));
                      },
                    ),
                    CustomDashBoard(
                      langName: 'C + +',
                      imagePath: 'assets/images/c++.png',
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return CPlusPlusScreen();
                        }));
                      },
                    ),
                    CustomDashBoard(
                      langName: 'Java',
                      imagePath: 'assets/images/java.jpeg',
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return JavaQuizScreen();
                        }));
                      },
                    ),
                    CustomDashBoard(
                      langName: 'React',
                      imagePath: 'assets/images/react.jpeg',
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ReactQuizScreen();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: screenSize.height*0.5,
                      width: screenSize.width*double.infinity,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Color(0xb59a9191),width: 3)
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            Text('Small OverView',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                            Text(
                               textAlign: TextAlign.center,
                                'Our Quiz App is a comprehensive platform designed to test and enhance your knowledge across four popular programming languages: Dart, C++, Java, and React. This Flutter-based application provides an intuitive and engaging way to learn and assess your proficiency in these languages through a series of well-crafted questions and answers'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
