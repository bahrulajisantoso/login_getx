import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_login/model/user_model.dart';
import 'package:user_login/services/api.dart';

class UserController extends GetxController {
  final Api _apiService = Api();

  var isLoading = false.obs;

  Future<void> getUser(String email, String password) async {
    isLoading.value = true;
    try {
      final data = await _apiService.user();

      if (_login(email, password, data) == true) {
        // debugPrint("login sukses");
        Get.snackbar('Error', 'Login success',
            snackPosition: SnackPosition.BOTTOM);
        Get.offAllNamed('/home', arguments: data);
      } else {
        // debugPrint("login gagal");
        Get.snackbar('Error', 'Login failed',
            snackPosition: SnackPosition.BOTTOM);
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
  }
}
