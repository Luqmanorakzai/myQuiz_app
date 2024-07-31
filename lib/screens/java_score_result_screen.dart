import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quize_app/widget/costum_app_bar.dart';

class JavaResultSctrreen extends StatelessWidget {
final double javaPercentages;
  const JavaResultSctrreen({super.key, required this.javaPercentages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostumAppBar(appBarTitleText: 'Java Reslut',),
      body: Center(child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.25),blurRadius: 2)
          ]
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            children: [
              Text('Your score is  ${javaPercentages.toStringAsFixed(2)} %age',
                style: TextStyle(fontSize: 16),
              ),

              Gap(20),

              TextButton(onPressed: (){

                Navigator.pop(context);
              }, child: Text('Start Again'))
            ],
          ),
        ),

      ),

      ),
    );
  }
}
