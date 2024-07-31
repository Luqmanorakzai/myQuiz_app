import 'package:flutter/material.dart';
import 'package:quize_app/screens/dart_quiz_screen.dart';

class DartResult extends StatelessWidget {
  final double showPercentage;
  const DartResult({super.key, required this.showPercentage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dart Quiz Result'),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your score is ${showPercentage.toStringAsFixed(2)}%age',
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(onPressed: (){
             Navigator.of(context).pop();
              }, child:Text('Start Again') )
            ],
          ),
        ),
      ),
    );
  }
}

