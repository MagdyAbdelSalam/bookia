import 'package:flutter/material.dart';
import '../../features/auth/ui/forget_password_screen.dart';
import '../../features/auth/ui/login_screen.dart';
import '../../features/auth/ui/otp_verification_screen.dart';
import '../../features/auth/ui/register_screen.dart';
import '../../features/welcome/ui/welcome_screen.dart';

class AppRoutes {
  // Route names
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPassword = '/forget-password';
  static const String otpVerification = '/otp-verification';

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