import 'package:bookstore/core/networking/api_constants.dart';
import 'package:bookstore/core/networking/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  static Dio dio = Dio();
  static Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await DioHelper.dio?.post(
        ApiConstants.login,
        data: {"email": email, "password": password},
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      if (response?.statusCode == 200) {
         await saveUserToken(response?.data["data"]["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (e is DioException) {
        print("STATUS: ${e.response?.statusCode}");
        print("DATA: ${e.response?.data}");
      }
      return false;
    }
  }

  static Future<void> saveUserToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
    print("Token Saved Successfully");
  }

  static Future<bool> register({
    required String name,
    required String email,
    required String password,
    required String password_confirmation,
  }) async {
    try {
      final response = await DioHelper.dio?.post(
        ApiConstants.register,
        data: {
          "name": name,
           "email": email,
           "password": password,
          "password_confirmation": password,
        },
      );
      if (response?.statusCode == 201) {
        await saveUserToken(response?.data["data"]["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
