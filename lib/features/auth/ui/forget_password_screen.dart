
import 'package:bookstore/core/routes/app_routes.dart';
import 'package:bookstore/core/theme/app_colors.dart';
import 'package:bookstore/core/widgets/app_button.dart';
import 'package:bookstore/core/widgets/custom_appbar.dart';
import 'package:bookstore/core/widgets/custom_text_form_field.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_text_row_register.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Row(
                children: [
                CustomAppbar(),
                ],
              ),
              SizedBox(height: 30.h,),
              Text('Forgot Password?'.tr(),style: TextStyle(
                fontSize: 30,
              ),),
              Text('dm'.tr(),style: TextStyle(
                color: AppColors.greyColor,
              ),),
              SizedBox(height: 30.h,),
              CustomTextFormField(hintText: 'enter email'.tr(),),
              SizedBox(height: 38.h,),
              AppButton(title: 'Send Code'.tr(), onTap: (){
                Navigator.pushNamed(context, AppRoutes.otpVerification);
              }),
              SizedBox(height: 361.h,),
              CustomTextRowToRegister(text: 'Remember Password?'.tr(), text2: 'Login'.tr(), onTap: () {  },)
            ],
          ),
        ),
      ),
    );
  }
}
