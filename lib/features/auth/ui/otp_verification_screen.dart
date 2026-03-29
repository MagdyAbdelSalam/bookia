import 'package:bookstore/features/auth/ui/widgets/custom_text_row_register.dart';
import 'package:bookstore/features/auth/ui/widgets/otp_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/custom_appbar.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Row(children: [CustomAppbar()]),
                SizedBox(height: 30.h),
                Text('OTP Verification'.tr(), style: TextStyle(fontSize: 30)),
                Text(
                  'Enter the verification code we just sent on your email address.'
                      .tr(),
                  style: TextStyle(color: AppColors.greyColor),
                ),
                SizedBox(height: 30.h),
                OtpInput(
                  onCompleted: (otp) {
                    print('OTP Entered: $otp');
                  },
                ),
                SizedBox(height: 38.h),
                AppButton(title: 'Verify'.tr(), onTap: () {}),
                SizedBox(height: 361.h),
                CustomTextRowToRegister(
                  text: 'Didn’t received code?'.tr(),
                  text2: 'Resend'.tr(),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
