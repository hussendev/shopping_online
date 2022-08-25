import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
   FontWeight fontWeight;

   AppText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.color,
     this.fontWeight=FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Nunito',
        color: color,
        fontWeight: fontWeight
      ),
    );
  }
}
