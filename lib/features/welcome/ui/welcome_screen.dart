
import 'package:bookstore/core/widgets/custom_icon.dart';
import 'package:bookstore/features/auth/ui/register_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_button.dart';
import '../../../gen/assets.gen.dart';
import '../../auth/ui/login_sceern.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(Assets.images.welcomeBackground.path).image,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 180.h),
                //image logo
                Assets.images.splash.image(),
                SizedBox(height: 28.h),
                //Text
                Expanded(
                  child: Text(
                    "order now".tr(),
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                //Button
                AppButton(
                  title: "Login".tr(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginSceern(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15.h),
                AppButton(
                  title: "Welcome Register".tr(),
                  color: Colors.white,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> RegisterScreen())
                    );
                  },
                ),
                SizedBox(height: 94.h),
              ],
            ),
          ),
          //icon language
          CustomIcon(),
        ],
      ),
    );
  }
}
