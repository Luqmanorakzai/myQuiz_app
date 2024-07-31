import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CostumBacgroundImage extends StatelessWidget {
final Widget child;
  const CostumBacgroundImage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/qbg.jpg')),
      ),
      child: child,

    );
  }
}
