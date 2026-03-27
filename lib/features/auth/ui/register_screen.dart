import 'package:bookstore/core/widgets/app_button.dart';
import 'package:bookstore/core/widgets/custom_appbar.dart';
import 'package:bookstore/core/widgets/custom_text_form_field.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_text_row_register.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 11.h,horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppbar(),
                ],
              ),
              SizedBox(height: 29.h,),
              Text("Register Welcome back".tr(),style: TextStyle(
                fontSize: 30.sp
              ),),
              SizedBox(height: 32.h,),
              CustomTextFormField( hintText: 'Username'.tr(),),
              SizedBox(height: 11.h,),
              CustomTextFormField(hintText: 'Email'.tr(),),
              SizedBox(height: 13.h,),
              CustomTextFormField(hintText: 'Password'.tr(),),
              SizedBox(height: 12.h,),
              CustomTextFormField(hintText: 'Confirm password'.tr(),),
              SizedBox(height: 30.h,),
              AppButton(title: "Register".tr(), onTap: (){}),
              SizedBox(height: 170.h,),
              CustomTextRowToRegister(text: 'account'.tr(), text2: 'Login'.tr(), onTap: () {
              },),
            ],
          ),
        ),
      ),
    );
  }
}
