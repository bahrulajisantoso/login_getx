import 'package:shared_preferences/shared_preferences.dart';

class Session {
  Future<void> session(String email, bool isLogin) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setBool('is_login', isLogin);
  }

  Future<String?> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('email') ?? "";
  }

  Future<bool?> getIsLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('is_login') ?? false;
  }

  Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('is_login');
  }
}
