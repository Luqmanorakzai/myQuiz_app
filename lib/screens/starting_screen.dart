import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:quize_app/screens/qz_dishboard_screen.dart';


class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Your Quiz App',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize.height * 0.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff2687CB),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24)
                          // topRight: Radius.circular(14),
                          // topLeft: Radius.circular(14)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Column(
                      children: [
                        Text(
                          'Improve your skills',
                          style: TextStyle(fontSize: 24),
                        ),
                        Gap(12),
                        Container(
                          height: screenSize.height * 0.4,
                          width: screenSize.width * 0.9,
                          child: Image.asset(
                              fit: BoxFit.cover, 'assets/images/quiz3.jpeg'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Color(0xff2687CB)]),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(24))
                ),
                child: Center(child:

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return QzDishboardScreen();
                      }));
                    },
                    child: Container(
                      height: screenSize.height*0.070,
                      width: screenSize.width*0.9,
                      child: Center(child: Text('Get Started',style: TextStyle(fontSize: 24),)),
                    ),
                  ),
                  ),

              ),
            )
          ],
        ));
  }
}
