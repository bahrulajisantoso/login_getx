import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_login/model/user_model.dart';
import 'package:user_login/services/api.dart';
import 'package:user_login/services/session.dart';

class UserController extends GetxController {
  final Api _apiService = Api();

  var isLoading = false.obs;

  Future<void> getUser(String email, String password) async {
    isLoading.value = true;
    try {
      final data = await _apiService.user();
      final session = Session();

      final emailSession = await session.getEmail();
      final isLogin = await session.getIsLogin();

      if (emailSession == "" && isLogin == false) {
        if (_login(email, password, data) == true) {
          Get.snackbar('Success', 'Login success',
              snackPosition: SnackPosition.BOTTOM);
          await session.session(email, true);
          Get.offAllNamed('/home', arguments: data);
        } else {
          Get.snackbar('Error', 'Login failed',
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        Get.offAllNamed('/home', arguments: data);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
      debugPrint(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  _login(String email, String password, List<UserModel> users) {
    for (var user in users) {
      if (user.email == email && user.password == password) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
