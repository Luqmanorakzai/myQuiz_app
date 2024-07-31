import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CostumAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitleText;
  const CostumAppBar({super.key, required this.appBarTitleText,});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.withOpacity(0.25),
      leading:IconButton(onPressed: (){
        Navigator.of(context).pop();
      },
        icon: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: Text(
        appBarTitleText,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14)),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
