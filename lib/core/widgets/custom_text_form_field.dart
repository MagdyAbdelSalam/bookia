
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  const
  CustomTextFormField({super.key, required this.hintText, this.keyboardType,
    this.isPassword=false, this.controller

  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onTapUpOutside: (v){
        FocusScope.of(context).unfocus();
      },
      cursorColor: AppColors.primaryColor,
      keyboardType:widget.keyboardType ,
      obscureText: widget.isPassword&&isObscure,
      decoration: InputDecoration(
          suffixIcon:widget.isPassword? Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: InkWell(
                onTap: (){
                  setState(() {
                    isObscure=!isObscure;
                  });
                },
                child:isObscure? Icon(Icons.visibility):Icon(Icons.visibility_off,)),
          ):null,
          fillColor: AppColors.grrayColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: AppTextStyle.hintStyle,
          border: OutlineInputBorder(

          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.borderColor)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor)
          )
      ),
    );
  }
}