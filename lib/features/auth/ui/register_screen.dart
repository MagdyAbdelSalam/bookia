
import 'package:bookstore/core/widgets/custom_appbar.dart';
import 'package:bookstore/core/widgets/custom_text_form_field.dart';
import 'package:bookstore/features/auth/cubit/auth_cubit.dart';
import 'package:bookstore/features/auth/ui/widgets/auth_bloc_listener.dart';
import 'package:bookstore/features/auth/ui/widgets/custom_text_row_register.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
              Text(
                "Register Welcome back".tr(),
                style: TextStyle(fontSize: 30.sp),
              ),
              SizedBox(height: 32.h),
              CustomTextFormField(
                hintText: 'Username'.tr(),
                controller: usernameController,
              ),
              SizedBox(height: 11.h),
              CustomTextFormField(
                hintText: 'Email'.tr(),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(height: 13.h),
              CustomTextFormField(
                hintText: 'Password'.tr(),
                isPassword: true,
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
              ),
              SizedBox(height: 12.h),
              CustomTextFormField(
                hintText: 'Confirm password'.tr(),
                isPassword: true,
                keyboardType: TextInputType.visiblePassword,
                controller: confirmPasswordController,
              ),
              SizedBox(height: 30.h),
             AuthBlocListener(title: 'Register',onTap: (){
               context.read<AuthCubit>().register(
                   name: usernameController.text,
                   email: emailController.text,
                   password: passwordController.text,
                   password_confirmation: confirmPasswordController.text,
               );
             },),
              SizedBox(height: 170.h),
              CustomTextRowToRegister(
                text: 'account'.tr(),
                text2: 'Login'.tr(),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
