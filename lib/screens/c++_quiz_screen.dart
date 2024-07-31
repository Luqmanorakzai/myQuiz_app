
import 'package:flutter/material.dart';
import 'package:quize_app/widget/costum_app_bar.dart';

class CPlusPlusScreen extends StatelessWidget {
  const CPlusPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostumAppBar(appBarTitleText: 'C + +',),
    );


  }
}
