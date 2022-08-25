import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  String textHint;
  AppTextField({Key? key, required this.textHint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          hintText: textHint,
          hintStyle: TextStyle(fontFamily: 'Nunito', fontSize: 14.sp)),
    );
  }
}
