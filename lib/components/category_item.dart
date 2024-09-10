import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text,this.color,this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        height: 70,
        // color: Colors.deepPurple,

        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}


