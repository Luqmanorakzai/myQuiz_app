import 'package:flutter/cupertino.dart';

class CustomDashBoard extends StatelessWidget {
  final String langName;
  final String imagePath;
  final VoidCallback onTap;
  const CustomDashBoard(
      {super.key,
      required this.langName,
      required this.imagePath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xb59a9191,),width: 3),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
          Center(child: Text(langName,style: TextStyle(fontSize: 24),)),
            Image.asset(imagePath,
            height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
