import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpInput extends StatelessWidget {
  final int length;
  final void Function(String) onCompleted;

  const OtpInput({super.key, this.length = 6, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return PinInput(
      length: length,
      builder: (context, cells) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: cells.map((cell) {
            return Container(
              width: 48.w,
              height: 60.h,
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFFF7F8F9),
                border: Border.all(
                  color: cell.isFocused ? Color(0xffBFA054) : Color(0xff8391A1),
                  width: 1.w,
                ),
              ),
              child: Center(
                child: Text(
                  cell.character ?? '',
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
              ),
            );
          }).toList(),
        );
      },
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
    );
  }
}
