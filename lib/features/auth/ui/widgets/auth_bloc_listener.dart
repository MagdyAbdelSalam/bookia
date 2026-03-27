
import 'package:bookstore/core/routes/app_routes.dart';
import 'package:easy_localization/easy_localization.dart' as login;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../cubit/auth_cubit.dart';


class AuthBlocListener extends StatelessWidget {
  final String email;
  final String password;
  const AuthBlocListener({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is AuthLoadingState){
          showDialog(context: context, builder: (context)=>
              Center(child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              )));
        }else if(state is AuthErrorState){
          Navigator.pop(context);
          showDialog(context: context, builder:(context)=> AlertDialog(
            title: Text("Error"),
            content: Text("Something wrong please try again"),
          ));
        }else if(state is AuthSuccessState){
          Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavBarScreen, (route) => false);
        }
      },
      child: AppButton(title: "Login".tr(),
        onTap: ()  {
          context.read<AuthCubit>().login(email: email, password: password);
        },
      ),
    );
  }
}