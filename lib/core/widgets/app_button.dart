import 'package:bookstore/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color? color;
  final void Function()? onTap;
   AppButton({super.key, required this.title,  this.color, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 19.h),
        decoration: BoxDecoration(
          border: color==null? null:Border.all(
            color: Colors.black,
          ),
          color: color??AppColors.primaryColor,
          borderRadius:  BorderRadius.circular(8.r),
        ),
        child: Text(title,style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: color==Colors.white?Colors.black :Colors.white
        ),),
      ),
    );
  }
}
