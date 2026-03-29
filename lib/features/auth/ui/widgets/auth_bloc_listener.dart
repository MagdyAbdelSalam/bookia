import 'package:bookstore/core/routes/app_routes.dart';
import 'package:easy_localization/easy_localization.dart' as login;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/app_button.dart';
import '../../cubit/auth_cubit.dart';

 class AuthBlocListener extends StatelessWidget {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  final String title;
  final void Function()? onTap;
  AuthBlocListener({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoadingState) {
          showDialog(
            context: context,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );
        } else if (state is AuthErrorState) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (_) => const AlertDialog(
              title: Text("Error"),
              content: Text("Something wrong please try again"),
            ),
          );
        } else if (state is AuthSuccessState) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.bottomNavBarScreen,
            (route) => false,
          );
        }
      },
      child: AppButton(
        title: title.tr(),
        onTap: onTap,
      ),
    );
  }
}
