import 'package:bookstore/core/widgets/app_button_logo.dart';
import 'package:bookstore/features/auth/ui/widgets/Custom_divider.dart';
import 'package:bookstore/core/widgets/custom_appbar.dart';
import 'package:bookstore/features/auth/ui/widgets/auth_bloc_listener.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_password_text.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_text_row_register.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../gen/assets.gen.dart';
import '../cubit/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [CustomAppbar()],
              ),
              SizedBox(height: 29.h),
              Text("Welcome back.".tr(), style: TextStyle(fontSize: 30)),
              SizedBox(height: 32.h),
              CustomTextFormField(
                hintText: 'enter email'.tr(),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                hintText: 'enter password'.tr(),
                controller: passwordController,
                isPassword: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 13.h),
              CustomPasswordText(),
              SizedBox(height: 30.h),
              AuthBlocListener(title: 'Login',onTap: (){
                context.read<AuthCubit>().login(
                    email: emailController.text,
                    password: passwordController.text,
                );
              },),
              SizedBox(height: 34.h),
              CustomDivider(),
              SizedBox(height: 20.h),
              AppBottomLogo(
                data: "Sign in with Google".tr(),
                bottmColor: Color(0xffFFFFFF),
                image: AssetImage(Assets.images.googleIcon.path),
                textColor: Color(0xff6A707C),
              ),
              SizedBox(height: 15.h),
              AppBottomLogo(
                data: "Sign in with Apple".tr(),
                bottmColor: Color(0xffFFFFFF),
                image: AssetImage(Assets.images.appleIcon.path),
                textColor: Color(0xff6A707C),
              ),
              SizedBox(height: 65.h),
              CustomTextRowToRegister(
                text: 'Don’t have an account?'.tr(),
                text2: 'Register Now'.tr(),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
