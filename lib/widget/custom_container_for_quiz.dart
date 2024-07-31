import 'package:flutter/cupertino.dart';

class QuiaContainer extends StatefulWidget {
  final String javaOption;
  final String onTaps;

  const QuiaContainer({super.key, required this.javaOption, required this.onTaps,});

  @override
  State<QuiaContainer> createState() => _QuiaContainerState();
}

class _QuiaContainerState extends State<QuiaContainer> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
      },
      child: Container(
      height:30 ,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
