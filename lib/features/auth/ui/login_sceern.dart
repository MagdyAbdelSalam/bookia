import 'package:bookstore/core/widgets/app_button.dart';
import 'package:bookstore/core/widgets/app_button_logo.dart';
import 'package:bookstore/core/widgets/custom_icon.dart';
import 'package:bookstore/features/auth/ui/widgets/Custom_divider.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_login_appbar.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_password_text.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_text_row_register.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text_form_field.dart';
import '../../../gen/assets.gen.dart';

class LoginSceern extends StatelessWidget {
  const LoginSceern({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 50.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomLoginAppbar(),
                  ],
                ),
                SizedBox(height: 29.h ,),
                Text("Welcome back.".tr(),style: TextStyle(
                  fontSize: 30,
                ),),
                SizedBox(height: 32.h,),
                CustomTextFormField(data: 'enter email'.tr(),),
                SizedBox(height: 15.h,),
                CustomTextFormField(data: 'enter password'.tr(),),
                SizedBox(height: 13.h,),
                CustomPasswordText(),
                SizedBox(height: 30.h,),
                AppButton(title: 'Login', onTap: (){}),
                SizedBox(height: 34.h,),
                CustomDivider(),
                AppBottomLogo(data: "Sign in with Google".tr(), bottmColor: Color(0xffFFFFFF), image: AssetImage(Assets.images.googleIcon.path), textColor: Color(0xff6A707C)),
                SizedBox(height: 15.h,),
                AppBottomLogo(data: "Sign in with Apple".tr(), bottmColor: Color(0xffFFFFFF), image: AssetImage(Assets.images.appleIcon.path), textColor: Color(0xff6A707C)),
                SizedBox(height: 80.h,),
                CustomTextRowToRegister(),






              ],
            ),

          ),
        ),
      ),
    );
  }
}
