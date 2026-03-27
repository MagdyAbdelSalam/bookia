
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRowToRegister extends StatelessWidget {
  final String text;
  final String text2;
  void Function()? onTap;
  CustomTextRowToRegister({super.key, required this.text, required this.text2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),),
        InkWell(
          onTap: onTap,
          child: Text(text2,style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xffBFA054),
          ),),
        )
      ],
    );
  }
}
