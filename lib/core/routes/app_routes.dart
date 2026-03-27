import 'package:bookstore/features/auth/cubit/auth_cubit.dart';
import 'package:bookstore/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/ui/forget_password_screen.dart';
import '../../features/auth/ui/login_screen.dart';
import '../../features/auth/ui/otp_verification_screen.dart';
import '../../features/auth/ui/register_screen.dart';
import '../../features/bottom_nav_bar_/bottom_nav_bar_Screen.dart';
import '../../features/welcome/ui/welcome_screen.dart';

class AppRoutes{
  // Route names
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPassword = '/forget-password';
  static const String otpVerification = '/otp-verification';
  static const String bottomNavBarScreen="bottomNavBar";

  // Route generator
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case forgetPassword:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case otpVerification:
        return MaterialPageRoute(builder: (_) => OtpVerificationScreen());
      case bottomNavBarScreen:
        return MaterialPageRoute(builder: (_) => BottomNavBarScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}