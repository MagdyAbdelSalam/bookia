import 'package:bookstore/book_sotre_app.dart';
import 'package:bookstore/core/helper/app_constants.dart';
import 'package:bookstore/core/networking/dio_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  DioHelper.init();
  AppConstants.token = prefs.getString("token");
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en', 'US'),
      child: BookSotreApp(),
    ),
  );
}
